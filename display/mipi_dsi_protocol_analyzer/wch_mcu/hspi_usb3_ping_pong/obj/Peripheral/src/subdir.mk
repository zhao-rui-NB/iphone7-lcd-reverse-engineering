################################################################################
# MRS Version: 2.2.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Peripheral/src/CH56x_bus8.c \
../Peripheral/src/CH56x_clk.c \
../Peripheral/src/CH56x_dvp.c \
../Peripheral/src/CH56x_ecdc.c \
../Peripheral/src/CH56x_emmc.c \
../Peripheral/src/CH56x_eth.c \
../Peripheral/src/CH56x_gpio.c \
../Peripheral/src/CH56x_hspi.c \
../Peripheral/src/CH56x_pwm.c \
../Peripheral/src/CH56x_pwr.c \
../Peripheral/src/CH56x_spi.c \
../Peripheral/src/CH56x_sys.c \
../Peripheral/src/CH56x_timer.c \
../Peripheral/src/CH56x_uart.c 

C_DEPS += \
./Peripheral/src/CH56x_bus8.d \
./Peripheral/src/CH56x_clk.d \
./Peripheral/src/CH56x_dvp.d \
./Peripheral/src/CH56x_ecdc.d \
./Peripheral/src/CH56x_emmc.d \
./Peripheral/src/CH56x_eth.d \
./Peripheral/src/CH56x_gpio.d \
./Peripheral/src/CH56x_hspi.d \
./Peripheral/src/CH56x_pwm.d \
./Peripheral/src/CH56x_pwr.d \
./Peripheral/src/CH56x_spi.d \
./Peripheral/src/CH56x_sys.d \
./Peripheral/src/CH56x_timer.d \
./Peripheral/src/CH56x_uart.d 

OBJS += \
./Peripheral/src/CH56x_bus8.o \
./Peripheral/src/CH56x_clk.o \
./Peripheral/src/CH56x_dvp.o \
./Peripheral/src/CH56x_ecdc.o \
./Peripheral/src/CH56x_emmc.o \
./Peripheral/src/CH56x_eth.o \
./Peripheral/src/CH56x_gpio.o \
./Peripheral/src/CH56x_hspi.o \
./Peripheral/src/CH56x_pwm.o \
./Peripheral/src/CH56x_pwr.o \
./Peripheral/src/CH56x_spi.o \
./Peripheral/src/CH56x_sys.o \
./Peripheral/src/CH56x_timer.o \
./Peripheral/src/CH56x_uart.o 


EXPANDS += \
./Peripheral/src/CH56x_bus8.c.234r.expand \
./Peripheral/src/CH56x_clk.c.234r.expand \
./Peripheral/src/CH56x_dvp.c.234r.expand \
./Peripheral/src/CH56x_ecdc.c.234r.expand \
./Peripheral/src/CH56x_emmc.c.234r.expand \
./Peripheral/src/CH56x_eth.c.234r.expand \
./Peripheral/src/CH56x_gpio.c.234r.expand \
./Peripheral/src/CH56x_hspi.c.234r.expand \
./Peripheral/src/CH56x_pwm.c.234r.expand \
./Peripheral/src/CH56x_pwr.c.234r.expand \
./Peripheral/src/CH56x_spi.c.234r.expand \
./Peripheral/src/CH56x_sys.c.234r.expand \
./Peripheral/src/CH56x_timer.c.234r.expand \
./Peripheral/src/CH56x_uart.c.234r.expand 



# Each subdirectory must supply rules for building sources it contributes
Peripheral/src/%.o: ../Peripheral/src/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -g -DDEBUG=1 -I"c:/Users/rui/Desktop/iphone_screen/wch/code/hspi_usb3_ping_pong/hspi_usb3_ping_pong/RVMSIS" -I"c:/Users/rui/Desktop/iphone_screen/wch/code/hspi_usb3_ping_pong/hspi_usb3_ping_pong/Peripheral/inc" -I"c:/Users/rui/Desktop/iphone_screen/wch/code/hspi_usb3_ping_pong/hspi_usb3_ping_pong/User/USB30" -I"c:/Users/rui/Desktop/iphone_screen/wch/code/hspi_usb3_ping_pong/hspi_usb3_ping_pong/User/HSPI" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

