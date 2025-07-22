################################################################################
# MRS Version: 2.2.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../RVMSIS/core_riscv.c 

C_DEPS += \
./RVMSIS/core_riscv.d 

OBJS += \
./RVMSIS/core_riscv.o 


EXPANDS += \
./RVMSIS/core_riscv.c.234r.expand 



# Each subdirectory must supply rules for building sources it contributes
RVMSIS/%.o: ../RVMSIS/%.c
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -g -DDEBUG=1 -I"c:/Users/rui/Desktop/iphone_screen/wch/code/test_usb_hspi/test_usb_hspi/RVMSIS" -I"c:/Users/rui/Desktop/iphone_screen/wch/code/test_usb_hspi/test_usb_hspi/Peripheral/inc" -I"c:/Users/rui/Desktop/iphone_screen/wch/code/test_usb_hspi/test_usb_hspi/User/USB20" -I"c:/Users/rui/Desktop/iphone_screen/wch/code/test_usb_hspi/test_usb_hspi/User/USB30" -I"c:/Users/rui/Desktop/iphone_screen/wch/code/test_usb_hspi/test_usb_hspi/User" -I"c:/Users/rui/Desktop/iphone_screen/wch/code/test_usb_hspi/test_usb_hspi/User/HSPI" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

