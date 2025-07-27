#include <linux/string.h> 
#ifdef BUILD_UBOOT
#include <asm/arch/mt6575_gpio.h>
#define LCM_DEBUG printf
#else
#include <mach/mt6575_gpio.h>
#define LCM_DEBUG printk
#endif 
#include "lcm_drv.h"
#define LSCE_GPIO_PIN   (GPIO47)
#define LSCK_GPIO_PIN   (GPIO51)
#define LSDA_GPIO_PIN   (GPIO52)
#define LSDI_GPIO_PIN   (GPIO48)
//#define LSSHUT_GPIO_PIN (GPIO18) //LRSTB share pin with SHUT
#define POWER_ON_PIN  (GPIO106)
#define CLK_PIN       (GPIO70)
#define LCD_POWER_ON_PIN  (GPIO86)
#define FRAME_WIDTH  (720)
#define FRAME_HEIGHT (1280)
#define Bridge_IC_ID      0x2825 
static LCM_UTIL_FUNCS lcm_util = {0};
#define UDELAY(n)   (lcm_util.udelay(n))
#define MDELAY(n)   (lcm_util.mdelay(n)) #define SET_RESET_PIN(v)    (lcm_util.set_reset_pin((v)))
#define SET_GPIO_OUT(n, v)  (lcm_util.set_gpio_out((n), (v)))
#define SET_LSCE_LOW   SET_GPIO_OUT(LSCE_GPIO_PIN, 0)
#define SET_LSCE_HIGH  SET_GPIO_OUT(LSCE_GPIO_PIN, 1)
#define SET_LSCK_LOW   SET_GPIO_OUT(LSCK_GPIO_PIN, 0)
#define SET_LSCK_HIGH  SET_GPIO_OUT(LSCK_GPIO_PIN, 1)
#define SET_LSDA_LOW   SET_GPIO_OUT(LSDA_GPIO_PIN, 0)
#define SET_LSDA_HIGH  SET_GPIO_OUT(LSDA_GPIO_PIN, 1)
#define GET_HX_SDI     mt_get_gpio_in(LSDI_GPIO_PIN)
#define HX_WR_COM       (0x70)
#define HX_WR_REGISTER  (0x72)
#define HX_RD_REGISTER  (0x73)
// ---------------------------------------------------------------------------
//  Local Functions
// ---------------------------------------------------------------------------
static __inline void spi_send_data(unsigned int data)
{

  unsigned int i;
    SET_LSCE_HIGH;
   SET_LSCK_HIGH;
    SET_LSDA_HIGH;
    UDELAY(10);
    SET_LSCE_LOW;
    UDELAY(10);
     for (i = 0; i < 24; ++i)
    {
        if (data & (1 << 23)) {
            SET_LSDA_HIGH;
        } else {
            SET_LSDA_LOW;
        }
        data <<= 1;
        UDELAY(10);
        SET_LSCK_LOW;
        UDELAY(10);
        SET_LSCK_HIGH;
        UDELAY(10);
    }
    SET_LSDA_HIGH;
    SET_LSCE_HIGH;
}

static __inline void Write_com(unsigned int cmd)
{
    unsigned int out = ((HX_WR_COM<<16) | (cmd & 0xFFFF));
    spi_send_data(out);

}

static __inline void Write_register(unsigned int data)
{
    unsigned int out = ((HX_WR_REGISTER<<16) |(data & 0xFFFF));
    spi_send_data(out);
}

static __inline unsigned short Read_register(void)
{
     unsigned char i,j,front_data;
     unsigned short value = 0;
     front_data=HX_RD_REGISTER;
      SET_LSCE_HIGH;
     SET_LSCK_HIGH;
     SET_LSDA_HIGH;
     UDELAY(10);
     SET_LSCE_LOW;
     UDELAY(10); 
       for(i=0;i<8;i++) // 8  Data
     {
        if ( front_data& 0x80)
           SET_LSDA_HIGH;
        else
           SET_LSDA_LOW;
        front_data<<= 1;
        UDELAY(10);
        SET_LSCK_LOW;
        UDELAY(10); 
        SET_LSCK_HIGH;
        UDELAY(10);       
      }
      MDELAY(1); 
      for(j=0;j<16;j++) // 16 Data
      {
             SET_LSCK_HIGH;
        UDELAY(10);
        SET_LSCK_LOW;
        value<<= 1;
        value |= GET_HX_SDI;
           UDELAY(10); 
       }
       SET_LSCE_HIGH;
       return value;      
    }

static void init_lcm_registers(void)
{
    LCM_DEBUG("[LCM************]: init_lcm_registers. \n");
    Write_com(0x00B1);
    Write_register(0x0102);

    Write_com(0x00B2);
    Write_register(0x1030);//VBP = 16, HBP = 48
Issue

    Write_com(0x00B3);
    Write_register(0x1A6C);//VFP = 26, HFP = 108

    Write_com(0x00B4);     //设置分辨率
    Write_register(0x02D0);//H active

    Write_com(0x00B5);
    Write_register(0x0300);//V active = 768

    Write_com(0x00B6);
    Write_register(0x0007);//B: Burst mode, 7: Non-burst mode

    Write_com(0x00DE);
    Write_register(0x0003);//4 Lanes

    Write_com(0x00D6);
    Write_register(0x0004);//BGR color arrangement

    Write_com(0x00B9);
    Write_register(0x0000);//PLL off

    Write_com(0x00BA);//e设置TX_CLK 
    Write_register(0x8020);
    //Write_register(0x801C);
    
    Write_com(0x00BB);
    Write_register(0x0009); //LP freq. setting

    Write_com(0x00B9);
    Write_register(0x0001);//PLL on

    Write_com(0x00B8);
    Write_register(0x0000);//VC = 00

    Write_com(0x00B7);
    Write_register(0x030B);//Video mode on
    MDELAY(100);
 
    Write_com(0x00B8);
    Write_register(0x0000);

    Write_com(0x00BC);
    Write_register(0x0001);

    Write_com(0x00BF);
    Write_register(0x0011);//LCD leave sleep mode
       MDELAY(100);

    Write_com(0x00BF);
    Write_register(0x0029);//LCD display on
       MDELAY(100);
   
    Write_com(0x00B7);
    Write_register(0x034B);
	   MDELAY(100); 
 
}
// ---------------------------------------------------------------------------

//  LCM Driver Implementations

// ---------------------------------------------------------------------------

static void config_gpio(void)

{

    lcm_util.set_gpio_mode(LSCE_GPIO_PIN, GPIO_DISP_LSCE_PIN_M_GPIO);

    lcm_util.set_gpio_mode(LSCK_GPIO_PIN, GPIO_DISP_LSCK_PIN_M_GPIO);

    lcm_util.set_gpio_mode(LSDA_GPIO_PIN, GPIO_DISP_LSDA_PIN_M_GPIO);

    lcm_util.set_gpio_mode(LSDI_GPIO_PIN, GPIO_MODE_00);
 
    lcm_util.set_gpio_dir(LSCE_GPIO_PIN, GPIO_DIR_OUT);

    lcm_util.set_gpio_dir(LSCK_GPIO_PIN, GPIO_DIR_OUT);

    lcm_util.set_gpio_dir(LSDA_GPIO_PIN, GPIO_DIR_OUT);

    lcm_util.set_gpio_dir(LSDI_GPIO_PIN, GPIO_DIR_IN);
  
    lcm_util.set_gpio_pull_enable(LSCE_GPIO_PIN, GPIO_PULL_DISABLE);

    lcm_util.set_gpio_pull_enable(LSCK_GPIO_PIN, GPIO_PULL_DISABLE);

    lcm_util.set_gpio_pull_enable(LSDA_GPIO_PIN, GPIO_PULL_DISABLE);

    lcm_util.set_gpio_pull_enable(LSDI_GPIO_PIN, GPIO_PULL_ENABLE);

    mt_set_gpio_pull_select(LSDI_GPIO_PIN, GPIO_PULL_UP);   

} 
// ---------------------------------------------------------------------------
//  LCM Driver Implementations
// ---------------------------------------------------------------------------
 
static void lcm_set_util_funcs(const LCM_UTIL_FUNCS *util)

{
    memcpy(&lcm_util, util, sizeof(LCM_UTIL_FUNCS));
}
 
static void lcm_get_params(LCM_PARAMS *params)
{
    memset(params, 0, sizeof(LCM_PARAMS));
    params->type   = LCM_TYPE_DPI;
    params->ctrl   = LCM_CTRL_GPIO;
    params->width  = FRAME_WIDTH;
    params->height = FRAME_HEIGHT; 
    params->dpi.mipi_pll_clk_ref  = 0;
    params->dpi.mipi_pll_clk_div1 = 30;//43;
    params->dpi.mipi_pll_clk_div2 = 3;
    params->dpi.dpi_clk_div       = 2;
    params->dpi.dpi_clk_duty      = 1;
    params->dpi.clk_pol           = LCM_POLARITY_FALLING;
    params->dpi.de_pol            = LCM_POLARITY_RISING;
    params->dpi.vsync_pol         = LCM_POLARITY_FALLING;
    params->dpi.hsync_pol         = LCM_POLARITY_FALLING; 
    params->dpi.hsync_pulse_width = 2;
    params->dpi.hsync_back_porch  = 14;
    params->dpi.hsync_front_porch = 64;
    params->dpi.vsync_pulse_width = 1;
    params->dpi.vsync_back_porch  = 2;
    params->dpi.vsync_front_porch = 13;
    params->dpi.format            = LCM_DPI_FORMAT_RGB888;
    params->dpi.rgb_order         = LCM_COLOR_ORDER_RGB;
    params->dpi.is_serial_output  = 0; 
    params->dpi.intermediat_buffer_num = 2;
    params->dpi.io_driving_current = LCM_DRIVING_CURRENT_4MA; 
    params->dpi.i2x_en = 0;
    params->dpi.i2x_edge = 1;
}
 
static void lcm_init(void)
{ 
     unsigned short id;
     config_gpio(); 
     /*

     SET_RESET_PIN(1);
     SET_GPIO_OUT(LSSHUT_GPIO_PIN, 1);
     MDELAY(10);

     SET_GPIO_OUT(LSSHUT_GPIO_PIN, 0);
     MDELAY(100);
    
     SET_RESET_PIN(0);
     MDELAY(25);

     SET_RESET_PIN(1);
     MDELAY(120);*/

     SET_RESET_PIN(0);
     MDELAY(25);

     SET_RESET_PIN(1);
     MDELAY(120);    
     init_lcm_registers();      
    Write_com(0x00b0);    
    id=Read_register();
    #ifdef BUILD_UBOOT
        printf("Uboot--SSD2825 id is: %x\n",id);
    #else
        printk("Kernel--SSD2825 id is: %x\n",id);
    #endif 
    //while(1);
} 

static void lcm_suspend(void)

{
    //SET_GPIO_OUT(LSSHUT_GPIO_PIN, 1);    
    SET_RESET_PIN(1);    
    Write_com(0x00b7); 
    Write_register(0x034B);  

    Write_com(0x00b8); 
    Write_register(0x0000);  

    Write_com(0x00bc); 
    Write_register(0x0000);  

    Write_com(0x0028); 
    MDELAY(10);//MDELAY(20);  
    
    Write_com(0x0010); 
    MDELAY(200);//MDELAY(200);  

    Write_com(0x00b7); 
    Write_register(0x0340);  

    Write_com(0x00b9);
    Write_register(0x0000); 
    return;
}
 
static void lcm_resume(void)

{
     config_gpio(); 
     SET_RESET_PIN(0);
     MDELAY(25);
     SET_RESET_PIN(1);
     MDELAY(120); 
     init_lcm_registers();   
     return;
}
 
static unsigned int lcm_compare_id(void)

{
    return 1;
    unsigned short id;
    Write_com(0x00b0);    
    id=Read_register();      
    return (Bridge_IC_ID == id)?1:0; 
}
   
// ---------------------------------------------------------------------------
//  Get LCM Driver Hooks
// --------------------------------------------------------------------------- 
LCM_DRIVER samsung_720p_lcm_drv = 

{
    .name         = "samsung_720p",
    .set_util_funcs = lcm_set_util_funcs,
    .get_params     = lcm_get_params,
    .init           = lcm_init,
    .suspend        = lcm_suspend,
    .resume         = lcm_resume,

    .compare_id     = lcm_compare_id

};
 
   ************************************************************

 

 

