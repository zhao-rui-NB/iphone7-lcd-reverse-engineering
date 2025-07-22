// #include "CH56x_usb20.h"
#include "CH56x_usb30.h"
// #include "MAIN.h"
#include "CH56xusb30_LIB.h"
#include "hspi.h"

UINT8V ping_pong_state = 0;
UINT8V usb_ep1_upload_done_flag = 1;
UINT8V last_send_packet = 0;
UINT32V tx_addr_ptr;

/* Global Variable */
UINT8V        Tx_Lmp_Port = 0;
UINT8V        Link_Sta = 0;
static UINT32 SetupLen = 0;
static UINT8  SetupReqCode = 0;
static PUINT8 pDescr;

UINT8V usb_sending_flag = 0;

// UINT32V Endp1_Up_LastPackNum = 0x00;                                            /* The number of packets uploaded by endpoint 1 */
// UINT32V Endp1_Up_LastPackLen = 0x00;                                            /* The length of the last packet uploaded by endpoint 1 */
// UINT32V Endp1_Up_Status = 0x00;                                                 /* Endpoint 1 upload status: 0: free; 1: Uploading; */
// UINT32V Endp1_Down_LastPackNum = 0x00;                                          /* The number of packets last downloaded by endpoint 1 */
// UINT32V Endp1_Down_LastPackLen = 0x00;                                          /* The length of the last packet transmitted by endpoint 1 */
// UINT32V Endp1_Down_Status = 0x00;                                               /* Endpoint 1 download status: 0: download; 1: Stop downloading; */
// UINT32V Endp1_Down_IdleCount = 0x00;                                            /* Endpoint 1 downlink idle timing; */
// UINT8V  USB_Down_StopFlag = 0x00;                                               /* USB Download pause flag(USB Received a non-full packet,must wait until the HSPI is sent before continuing to download) */
// UINT8V  HSPI_RX_StopFlag = 0x00;                                                /* HSPI Receive pause flag(HSPI Received a non-full packet,You must wait for the USB upload to complete before continuing to receive) */

__attribute__((aligned(16))) UINT8 endp0RTbuff[512] __attribute__((section(".DMADATA")));  //Endpoint 0 data transceiving buffer
// __attribute__((aligned(16))) UINT8 endp1RTbuff[4096] __attribute__((section(".DMADATA"))); //Endpoint 1 data transceiving buffer

__attribute__((aligned(16))) UINT8 buffer0[4096] __attribute__((section(".DMADATA")));
__attribute__((aligned(16))) UINT8 buffer1[4096] __attribute__((section(".DMADATA")));



/* Device Descriptor */
const UINT8 SS_DeviceDescriptor[ ] =
{
        0x12, // bLength
        0x01, // DEVICE descriptor type
        0x00, // 3.00
        0x03,
        0xff, // device class
        0x80, // device sub-class
        0x55, // vendor specific protocol
        0x09, // max packet size 512B
        0x86, // vendor id-0x1A86(qinheng)
        0x1A,
        0x37, // product id 0x5537
        0x55,
        0x00, //bcdDevice 0x001
        0x01,
        0x01, // manufacturer index string
        0x02, // product index string
        0x03, // serial number index string
        0x01  // number of configurations
};

/* Configuration Descriptor */
const UINT8 SS_ConfigDescriptor[ ] =
{
        0x09, // length of this descriptor
        0x02, // CONFIGURATION (2)
        0x2c, // total length includes endpoint descriptors (should be 1 more than last address)
        0x00, // total length high byte
        0x01, // number of interfaces
        0x01, // configuration value for this one
        0x00, // configuration - string is here, 0 means no string
        0x80, // attributes - bus powered, no wakeup
        0x64, // max power - 800 ma is 100 (64 hex)
              //interface_descriptor
        0x09, // length of the interface descriptor
        0x04, // INTERFACE (4)
        0x00, // Zero based index 0f this interface
        0x00, // Alternate setting value (?)
        0x02, // Number of endpoints (not counting 0)
        0xff, // Interface class, ff is vendor specific
        0xff, // Interface sub-class
        0xff, // Interface protocol
        0x00, // Index to string descriptor for this interface
              //Endpoint 1 Descriptor
        0x07, // length of this endpoint descriptor
        0x05, // ENDPOINT (5)
        0x81, // endpoint direction (80 is in) and address
        0x02, // transfer type - 00 = control, 01 = iso, 10 = bulk, 11 = int
        0x00, // max packet size - 1024 bytes
        0x04, // max packet size - high
        0x00, // polling interval in milliseconds (1 for iso)
              //endp1_compansion_desc
        0x06, // length of this endpoint compansion descriptor
        0x30,
        DEF_ENDP1_IN_BURST_LEVEL - 1, // max burst size
        0x00,                         // no stream
        0x00,
        0x00,
        //endp1_descriptor
        0x07, // length of this endpoint descriptor
        0x05, // ENDPOINT (5)
        0x01, // endpoint direction (00 is out) and address
        0x02, // transfer type - 00 = control, 01 = iso, 10 = bulk, 11 = int
        0x00, // max packet size - 1024 bytes
        0x04, // max packet size - high
        0x00, // polling interval in milliseconds (1 for iso)
              //endp1_compansion_desc
        0x06, // length of this endpoint compansion descriptor
        0x30,
        DEF_ENDP1_OUT_BURST_LEVEL - 1, // max burst size
        0x00,                          // no stream
        0x00,
        0x00,

};

/* Language Descriptor */
const UINT8 StringLangID[ ] =
{
        0x04, // this descriptor length
        0x03, // descriptor type
        0x09, // Language ID 0 low byte
        0x04  // Language ID 0 high byte
};

/* Manufacturer Descriptor */
const UINT8 StringVendor[ ] =
{
        0x08, // length of this descriptor
        0x03,
        'W',
        0x00,
        'C',
        0x00,
        'H',
        0x00
};

/* Product Descriptor */
const UINT8 StringProduct[ ] =
{
        38,         //38 bytes
        0x03,       //0x03
        0x57, 0x00, //W
        0x43, 0x00, //C
        0x48, 0x00, //H
        0x20, 0x00, //
        0x55, 0x00, //U
        0x53, 0x00, //S
        0x42, 0x00, //B
        0x33, 0x00, //3
        0x2e, 0x00, //.
        0x30, 0x00, //0
        0x20, 0x00, //
        0x44, 0x00, //D
        0x45, 0x00, //E
        0x56, 0x00, //V
        0x49, 0x00, //I
        0x43, 0x00, //C
        0x45, 0x00, //E
        0x20, 0x00
};

/* Serial Descriptor */
UINT8 StringSerial[ ] =
{
        0x16, // length of this descriptor
        0x03,
        '0',
        0x00,
        '1',
        0x00,
        '2',
        0x00,
        '3',
        0x00,
        '4',
        0x00,
        '5',
        0x00,
        '6',
        0x00,
        '7',
        0x00,
        '8',
        0x00,
        '9',
        0x00,
};

const UINT8 OSStringDescriptor[ ] =
{
        0x12, // length of this descriptor
        0x03,
        'M',
        0x00,
        'S',
        0x00,
        'F',
        0x00,
        'T',
        0x00,
        '1',
        0x00,
        '0',
        0x00,
        '0',
        0x00,
        0x01,
        0x00
};

const UINT8 BOSDescriptor[ ] =
{
        0x05, // length of this descriptor
        0x0f, // CONFIGURATION (2)
        0x16, // total length includes endpoint descriptors (should be 1 more than last address)
        0x00, // total length high byte
        0x02, // number of device cap

        //dev_cap_descriptor1
        0x07,
        0x10, // DEVICE CAPABILITY type
        0x02, // USB2.0 EXTENSION
        0x06,
        0x00,
        0x00,
        0x00,

        //dev_cap_descriptor2
        0x0a, // length of this descriptor
        0x10, // DEVICE CAPABILITY type
        0x03, // superspeed usb device capability
        0x00, //
        0x0e, // ss/hs/fs
        0x00,
        0x01, // the lowest speed is full speed
        0x0a, // u1 exit latency is 10us
        0xff, // u1 exit latency is 8us
        0x07
};

const UINT8 MSOS20DescriptorSet[ ] =
{
        // Microsoft OS 2.0 Descriptor Set Header
        0x0A, 0x00,             // wLength - 10 bytes
        0x00, 0x00,             // MSOS20_SET_HEADER_DESCRIPTOR
        0x00, 0x00, 0x03, 0x06, // dwWindowsVersion  0x06030000 for Windows Blue
        0x48, 0x00,             // wTotalLength  72 bytes
                    // Microsoft OS 2.0 Registry Value Feature Descriptor
        0x3E, 0x00,             // wLength - 62 bytes
        0x04, 0x00,             // wDescriptorType  4 for Registry Property
        0x04, 0x00,             // wPropertyDataType - 4 for REG_DWORD
        0x30, 0x00,             // wPropertyNameLength  48 bytes
        0x53, 0x00, 0x65, 0x00, // Property Name - ※SelectiveSuspendEnabled§
        0x6C, 0x00, 0x65, 0x00,
        0x63, 0x00, 0x74, 0x00,
        0x69, 0x00, 0x76, 0x00,
        0x65, 0x00, 0x53, 0x00,
        0x75, 0x00, 0x73, 0x00,
        0x70, 0x00, 0x65, 0x00,
        0x6E, 0x00, 0x64, 0x00,
        0x45, 0x00, 0x6E, 0x00,
        0x61, 0x00, 0x62, 0x00,
        0x6C, 0x00, 0x65, 0x00,
        0x64, 0x00, 0x00, 0x00,
        0x04, 0x00,            // wPropertyDataLength  4 bytes
        0x01, 0x00, 0x00, 0x00 // PropertyData - 0x00000001
};

const UINT8 PropertyHeader[ ] =
{
        0x8e, 0x00, 0x00, 0x00, 0x00, 01, 05, 00, 01, 00,
        0x84, 0x00, 0x00, 0x00,
        0x01, 0x00, 0x00, 0x00,
        0x28, 0x00,
        0x44, 0x00, 0x65, 0x00, 0x76, 0x00, 0x69, 0x00, 0x63, 0x00, 0x65, 0x00, 0x49, 0x00, 0x6e,
        0x00, 0x74, 0x00, 0x65, 0x00, 0x72, 0x00, 0x66, 0x00, 0x61, 0x00, 0x63, 0x00, 0x65, 0x00, 0x47, 0x00, 0x55, 0x00, 0x49, 0x00, 0x44, 0x00, 0x00, 0x00,

        0x4e, 0x00, 0x00, 0x00,
        0x7b, 0x00, 0x31, 0x00, 0x32, 0x00, 0x33, 0x00, 0x34, 0x00, 0x35, 0x00, 0x36, 0x00, 0x37, 0x00, 0x38, 0x00,
        0x2d, 0x00, 0x31, 0x00, 0x32, 0x00, 0x33, 0x00, 0x34, 0x00,
        0x2d, 0x00, 0x31, 0x00, 0x32, 0x00, 0x33, 0x00, 0x34, 0x00,
        0x2d, 0x00, 0x31, 0x00, 0x32, 0x00, 0x33, 0x00, 0x34, 0x00, 0x2d, 0x00, 0x31, 0x00, 0x32, 0x00, 0x33, 0x00,
        0x34, 0x00, 0x35, 0x00, 0x36, 0x00, 0x37, 0x00, 0x38, 0x00, 0x39, 0x00, 0x41, 0x00, 0x42, 0x00, 0x43, 0x00,
        0x7d, 0x00, 0x00, 0x00
};

const UINT8 CompactId[ ] =
{
        0x28, 0x00, 0x00, 0x00, 0x00, 0x01, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
        0x57, 0x49, 0x4e, 0x55, 0x53, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

UINT8 GetStatus[ ] =
{
        0x01, 0x00
};


void USB30D_init( FunctionalState sta )
{
    UINT16 i, s;
    if( sta )
    {
        s = USB30_Device_Init( );
        if( s )
        {
            printf("Init err\n");
            while( 1 );
        }
        USBSS->UEP_CFG = EP0_R_EN | EP0_T_EN | EP1_R_EN | EP1_T_EN ; // set end point rx/tx enable

        USBSS->UEP0_DMA = (UINT32)(UINT8 *)endp0RTbuff;
        // USBSS->UEP1_TX_DMA = (UINT32)(UINT8 *)DEF_ENDP1_TX_DMA_ADDR;
        // USBSS->UEP1_RX_DMA = (UINT32)(UINT8 *)DEF_ENDP1_RX_DMA_ADDR;

        // USB30_OUT_Set( ENDP_1, ACK, DEF_ENDP1_OUT_BURST_LEVEL );             // endpoint1 receive setting

    }
    else
    {
        USB30_Switch_Powermode( POWER_MODE_2 );
        USBSS->LINK_CFG = PIPE_RESET | LFPS_RX_PD;
        USBSS->LINK_CTRL = GO_DISABLED | POWER_MODE_3;
        USBSS->LINK_INT_CTRL = 0;
        USBSS->USB_CONTROL = USB_FORCE_RST | USB_ALL_CLR;
    }
}

UINT16 USB30_NonStandardReq( void )
{
    UINT8 endp_dir;

    SetupReqCode = UsbSetupBuf->bRequest;
    SetupLen = UsbSetupBuf->wLength;
    endp_dir = UsbSetupBuf->bRequestType & 0x80;
    UINT16 len = 0;
#if 0
    printf("NS:%02x %02x %02x %02x %02x %02x %02x %02x\n", endp0RTbuff[0], endp0RTbuff[1],
            endp0RTbuff[2], endp0RTbuff[3], endp0RTbuff[4], endp0RTbuff[5],
            endp0RTbuff[6], endp0RTbuff[7]);
#endif
    switch( SetupReqCode )
    {
        case 0xAA:
//            return USB_DESCR_UNSUPPORTED;
            break;

        case 0x02:                                                  //User defined commands
            switch( UsbSetupBuf->wIndexL )
            {
                case 0x05:
                    if( SetupLen > SIZE_PropertyHeader )
                    {
                        SetupLen = SIZE_PropertyHeader;
                    }
                    pDescr = (PUINT8)PropertyHeader;
                    break;
                default:
                    SetupReqCode = INVALID_REQ_CODE;
                    return USB_DESCR_UNSUPPORTED;
                    break;
            }
            break;
        default:
            SetupReqCode = INVALID_REQ_CODE;
            return USB_DESCR_UNSUPPORTED;
            break;
    }
    len = SetupLen >= ENDP0_MAXPACK ? ENDP0_MAXPACK : SetupLen;     // Current transmission length
    if( endp_dir )
    {
        memcpy( endp0RTbuff, pDescr, len );                           // Load upload data
        pDescr += len;
    }
    SetupLen -= len;
    return len;
}

UINT16 USB30_StandardReq( void )
{
    SetupReqCode = UsbSetupBuf->bRequest;
    SetupLen = UsbSetupBuf->wLength;
    UINT16 len = 0;
#if 0
    printf("S:%02x %02x %02x %02x %02x %02x %02x %02x\n", endp0RTbuff[0], endp0RTbuff[1],
            endp0RTbuff[2], endp0RTbuff[3], endp0RTbuff[4], endp0RTbuff[5],
            endp0RTbuff[6], endp0RTbuff[7]);
#endif

    if( (UsbSetupBuf->bRequestType & USB_REQ_TYP_MASK) != USB_REQ_TYP_STANDARD )
    {
        len = USB30_NonStandardReq( );
    }
    else
    {
        switch( SetupReqCode )
        {
            case USB_GET_DESCRIPTOR:
                switch( UsbSetupBuf->wValueH )
                {
                    case USB_DESCR_TYP_DEVICE:
                        if( SetupLen > SIZE_DEVICE_DESC )
                            SetupLen = SIZE_DEVICE_DESC;
                        pDescr = (PUINT8)SS_DeviceDescriptor;
                        break;
                    case USB_DESCR_TYP_CONFIG:
                        if( SetupLen > SIZE_CONFIG_DESC )
                            SetupLen = SIZE_CONFIG_DESC;
                        pDescr = (PUINT8)SS_ConfigDescriptor;
                        break;
                    case USB_DESCR_TYP_BOS:
                        if( SetupLen > SIZE_BOS_DESC )
                            SetupLen = SIZE_BOS_DESC;
                        pDescr = (PUINT8)BOSDescriptor;
                        break;
                    case USB_DESCR_TYP_STRING:
                        switch(UsbSetupBuf->wValueL)
                        {
                            case USB_DESCR_LANGID_STRING:
                                if(SetupLen > SIZE_STRING_LANGID)
                                    SetupLen = SIZE_STRING_LANGID;
                                pDescr = (PUINT8)StringLangID;
                                break;
                            case USB_DESCR_VENDOR_STRING:
                                if(SetupLen > SIZE_STRING_VENDOR)
                                    SetupLen = SIZE_STRING_VENDOR;
                                pDescr = (PUINT8)StringVendor;
                                break;
                            case USB_DESCR_PRODUCT_STRING:
                                if(SetupLen > SIZE_STRING_PRODUCT)
                                    SetupLen = SIZE_STRING_PRODUCT;
                                pDescr = (PUINT8)StringProduct;
                                break;
                            case USB_DESCR_SERIAL_STRING:
                                if(SetupLen > SIZE_STRING_SERIAL)
                                    SetupLen = SIZE_STRING_SERIAL;
                                pDescr = (PUINT8)StringSerial;
                                break;
                            case USB_DESCR_OS_STRING:
                                if(SetupLen > SIZE_STRING_OS)
                                    SetupLen = SIZE_STRING_OS;
                                pDescr = (PUINT8)OSStringDescriptor;
                                break;
                            default:
                                len = USB_DESCR_UNSUPPORTED;     //Unsupported descriptor
                                SetupReqCode = INVALID_REQ_CODE; //Invalid request code
                                break;
                        }
                        break;
                    default:
                        len = USB_DESCR_UNSUPPORTED; //Unsupported descriptor
                        SetupReqCode = INVALID_REQ_CODE;
                        break;
                }
                len = SetupLen >= ENDP0_MAXPACK ? ENDP0_MAXPACK : SetupLen; //Current transmission length
                memcpy( endp0RTbuff, pDescr, len );                           //Load upload data
                SetupLen -= len;
                pDescr += len;
                break;
            case USB_SET_ADDRESS:
                SetupLen = UsbSetupBuf->wValueL; // Temporary USB device address
                break;
            case 0x31:
                SetupLen = UsbSetupBuf->wValueL; // Temporary USB device address
                break;
            case 0x30:
                break;
            case USB_SET_CONFIGURATION:
                break;
            case USB_GET_STATUS:
                len = 2;
                endp0RTbuff[0] = 0x01;
                endp0RTbuff[1] = 0x00;
                SetupLen = 0;
                break;
            case USB_CLEAR_FEATURE:
                break;
            case USB_SET_FEATURE:
                break;
            case USB_SET_INTERFACE:
                break;
            default:
                len = USB_DESCR_UNSUPPORTED;  //return stall，unsupported command
                SetupReqCode = INVALID_REQ_CODE;
                break;
        }
    }
    return len;
}

UINT16 EP0_IN_Callback( void )
{
    UINT16 len = 0;
    switch( SetupReqCode )
    {
        case USB_GET_DESCRIPTOR:
            len = SetupLen >= ENDP0_MAXPACK ? ENDP0_MAXPACK : SetupLen;
            memcpy( endp0RTbuff, pDescr, len );
            SetupLen -= len;
            pDescr += len;
            break;
    }
    return len;
}

UINT16 EP0_OUT_Callback( void )
{
    UINT16 len;
    return len;
}

void USB30_Setup_Status( void )
{
    switch( SetupReqCode )
    {
        case USB_SET_ADDRESS:
            USB30_Device_Setaddress( SetupLen ); // SET ADDRESS
            break;
        case 0x31:
            break;
    }
}

void USBSS_IRQHandler( void ) //USBSS interrupt service
{
    USB30_IRQHandler( );
}

void TMR0_IRQHandler( void )
{
    R8_TMR0_INT_FLAG = RB_TMR_IF_CYC_END;

    if( Link_Sta == LINK_STA_1 )
    {
        Link_Sta = 0;
        PFIC_DisableIRQ(USBSS_IRQn);
        PFIC_DisableIRQ(LINK_IRQn);
        USB30D_init(DISABLE);
        PRINT("USB3.0 disable\n");
        return;
    }
    if( Link_Sta != LINK_STA_3 )
    {
        PFIC_DisableIRQ(USBSS_IRQn);
        PFIC_DisableIRQ(LINK_IRQn);
        USB30D_init(DISABLE);
        //        PRINT("USB2.0\n");
        R32_USB_CONTROL = 0;
        PFIC_EnableIRQ(USBHS_IRQn);
        // USB20_Device_Init(ENABLE);
        PRINT("Link_Sta != LINK_STA_3 , USB30D_init(DISABLE)");
    }
    Link_Sta = LINK_STA_1;
    R8_TMR0_INTER_EN = 0;
    PFIC_DisableIRQ(TMR0_IRQn);
    R8_TMR0_CTRL_MOD = RB_TMR_ALL_CLEAR;
}

void LINK_IRQHandler( void ) //USBSS link interrupt service
{
    if( USBSS->LINK_INT_FLAG & LINK_Ux_EXIT_FLAG ) // device enter U2
    {
        USBSS->LINK_CFG = CFG_EQ_EN | TX_SWING | DEEMPH_CFG | TERM_EN;
        USB30_Switch_Powermode(POWER_MODE_0);
        USBSS->LINK_INT_FLAG = LINK_Ux_EXIT_FLAG;
    }
    if( USBSS->LINK_INT_FLAG & LINK_RDY_FLAG ) // POLLING SHAKE DONE
    {
        USBSS->LINK_INT_FLAG = LINK_RDY_FLAG;
        if( Tx_Lmp_Port ) // LMP, TX PORT_CAP & RX PORT_CAP
        {
            USBSS->LMP_TX_DATA0 = LINK_SPEED | PORT_CAP | LMP_HP;
            USBSS->LMP_TX_DATA1 = UP_STREAM | NUM_HP_BUF;
            USBSS->LMP_TX_DATA2 = 0x0;
            Tx_Lmp_Port = 0;
        }
        /*Successful USB3.0 communication*/
        Link_Sta = LINK_STA_3;
        PFIC_DisableIRQ(TMR0_IRQn);
        R8_TMR0_CTRL_MOD = RB_TMR_ALL_CLEAR;
        R8_TMR0_INTER_EN = 0;
        PFIC_DisableIRQ(USBHS_IRQn);
        // USB20_Device_Init(DISABLE);
    }

    if( USBSS->LINK_INT_FLAG & LINK_INACT_FLAG )
    {
        Link_Sta = 0;
        PFIC_EnableIRQ(USBSS_IRQn);
        PFIC_EnableIRQ(LINK_IRQn);
        PFIC_EnableIRQ(TMR0_IRQn);
        R8_TMR0_INTER_EN = RB_TMR_IE_CYC_END;
        TMR0_TimerInit( 67000000 );
        USB30D_init(ENABLE);
        USBSS->LINK_INT_FLAG = LINK_INACT_FLAG;
        USB30_Switch_Powermode(POWER_MODE_2);
    }
    if( USBSS->LINK_INT_FLAG & LINK_DISABLE_FLAG ) // GO DISABLED
    {
        USBSS->LINK_INT_FLAG = LINK_DISABLE_FLAG;
        Link_Sta = LINK_STA_1;
        USB30D_init(DISABLE);
        PFIC_DisableIRQ(USBSS_IRQn);
        R8_TMR0_CTRL_MOD = RB_TMR_ALL_CLEAR;
        R8_TMR0_INTER_EN = 0;
        PFIC_DisableIRQ(TMR0_IRQn);
        PFIC_EnableIRQ(USBHS_IRQn);
        // USB20_Device_Init(ENABLE);
        PRINT("USBSS->LINK_INT_FLAG & LINK_DISABLE_FLAG , USB30D_init(DISABLE)");
    }
    if( USBSS->LINK_INT_FLAG & LINK_RX_DET_FLAG )
    {
        USBSS->LINK_INT_FLAG = LINK_RX_DET_FLAG;
        USB30_Switch_Powermode(POWER_MODE_2);
    }
    if( USBSS->LINK_INT_FLAG & TERM_PRESENT_FLAG ) // term present , begin POLLING
    {
        USBSS->LINK_INT_FLAG = TERM_PRESENT_FLAG;
        if( USBSS->LINK_STATUS & LINK_PRESENT )
        {
            USB30_Switch_Powermode(POWER_MODE_2);
            USBSS->LINK_CTRL |= POLLING_EN;
        }
        else
        {
            USBSS->LINK_INT_CTRL = 0;
        }
    }
    if( USBSS->LINK_INT_FLAG & LINK_TXEQ_FLAG ) // POLLING SHAKE DONE
    {
        Tx_Lmp_Port = 1;
        USBSS->LINK_INT_FLAG = LINK_TXEQ_FLAG;
        USB30_Switch_Powermode(POWER_MODE_0);
    }
    if( USBSS->LINK_INT_FLAG & WARM_RESET_FLAG )
    {
        USBSS->LINK_INT_FLAG = WARM_RESET_FLAG;
        USB30_Switch_Powermode(POWER_MODE_2);
        USBSS->LINK_CTRL |= TX_WARM_RESET;
        while(USBSS->LINK_STATUS & RX_WARM_RESET);
        USBSS->LINK_CTRL &= ~TX_WARM_RESET;
        USB30_Device_Setaddress(0);

    }
    if( USBSS->LINK_INT_FLAG & HOT_RESET_FLAG ) //The host may send hot reset,Note the configuration of the endpoint
    {
        USBSS->USB_CONTROL |= 1 << 31;
        USBSS->LINK_INT_FLAG = HOT_RESET_FLAG; // HOT RESET begin
        USBSS->UEP0_TX_CTRL = 0;
        USB30_IN_Set(ENDP_1, DISABLE, NRDY, 0, 0);
        USB30_OUT_Set(ENDP_1, NRDY, 0);
        USB30_Device_Setaddress(0);
        USBSS->LINK_CTRL &= ~TX_HOT_RESET;     // HOT RESET end
    }
    if( USBSS->LINK_INT_FLAG & LINK_GO_U1_FLAG ) // device enter U1
    {
        USB30_Switch_Powermode(POWER_MODE_1);
        USBSS->LINK_INT_FLAG = LINK_GO_U1_FLAG;
    }
    if( USBSS->LINK_INT_FLAG & LINK_GO_U2_FLAG ) // device enter U2
    {
        USB30_Switch_Powermode(POWER_MODE_2);
        USBSS->LINK_INT_FLAG = LINK_GO_U2_FLAG;
    }
    if( USBSS->LINK_INT_FLAG & LINK_GO_U3_FLAG ) // device enter U2
    {
        USB30_Switch_Powermode(POWER_MODE_2);
        USBSS->LINK_INT_FLAG = LINK_GO_U3_FLAG;
    }
}

void EP1_IN_Callback( void )
{
    
    // USB30_IN_ClearIT(ENDP_1);
    // USBSS->UEP1_TX_DMA =  (UINT32)buffer0;
    // USB30_IN_Set(ENDP_1, ENABLE, ACK, 4, 1024);
    // USB30_Send_ERDY(ENDP_1 | IN, 4);
    // // usb_ep1_upload_done_flag = 1;
    // return;
    
    
    UINT8 nump;
    nump = USB30_IN_Nump(ENDP_1); //nump: Number of remaining packets to be sent
    if (nump==0){
        usb_ep1_upload_done_flag = 1;
        USB30_IN_ClearIT(ENDP_1);
        // R32_HSPI_RX_ADDR0 = (UINT32)buffer0;
        // PIN_HRTS_LOW(); // start recv
    }
    else if(nump <= 4){
        tx_addr_ptr += (last_send_packet-nump)*1024;
        USBSS->UEP1_TX_DMA = tx_addr_ptr;
        last_send_packet = nump;
        USB30_IN_ClearIT(ENDP_1);
        USB30_IN_Set(ENDP_1, ENABLE, ACK, nump, 1024);
        USB30_Send_ERDY(ENDP_1 | IN, nump);
    }
    else{
        // usb_ep1_upload_done_flag = 1;
        USB30_IN_ClearIT(ENDP_1);
        PRINT("tx ERR\n");
    }
}

void EP1_OUT_Callback( void ){}

void EP2_IN_Callback( void ){}

void EP3_IN_Callback( void ){}

void EP4_IN_Callback( void ){}

void EP5_IN_Callback( void ){}

void EP6_IN_Callback( void ){}

void EP7_IN_Callback( void ){}

void EP2_OUT_Callback( void ){}

void EP3_OUT_Callback( void ){}

void EP4_OUT_Callback( void ){}

void EP5_OUT_Callback( void ){}

void EP6_OUT_Callback( void ){}

void EP7_OUT_Callback( void ){}

void USB30_ITP_Callback( UINT32 ITPCounter ){}

