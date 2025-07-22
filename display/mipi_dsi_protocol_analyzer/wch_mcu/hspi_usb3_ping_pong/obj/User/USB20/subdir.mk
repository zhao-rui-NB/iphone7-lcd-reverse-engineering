################################################################################
# MRS Version: 2.2.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/USB20/CH56x_usb20.c 

C_DEPS += \
./User/USB20/CH56x_usb20.d 

OBJS += \
./User/USB20/CH56x_usb20.o 


EXPANDS += \
./User/USB20/CH56x_usb20.c.234r.expand 



# Each subdirectory must supply rules for building sources it contributes
User/USB20/%.o: ../User/USB20/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -g -DDEBUG=1 -I"c:/Users/rui/Desktop/iphone_screen/wch/code/hspi_usb3_ping_pong/hspi_usb3_ping_pong/RVMSIS" -I"c:/Users/rui/Desktop/iphone_screen/wch/code/hspi_usb3_ping_pong/hspi_usb3_ping_pong/Peripheral/inc" -I"c:/Users/rui/Desktop/iphone_screen/wch/code/hspi_usb3_ping_pong/hspi_usb3_ping_pong/User/USB30" -I"c:/Users/rui/Desktop/iphone_screen/wch/code/hspi_usb3_ping_pong/hspi_usb3_ping_pong/User/HSPI" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

