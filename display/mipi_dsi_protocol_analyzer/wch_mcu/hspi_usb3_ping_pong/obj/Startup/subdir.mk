################################################################################
# MRS Version: 2.2.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Startup/startup_CH56x.S 

S_UPPER_DEPS += \
./Startup/startup_CH56x.d 

OBJS += \
./Startup/startup_CH56x.o 


EXPANDS += \
./Startup/startup_CH56x.S.234r.expand 



# Each subdirectory must supply rules for building sources it contributes
Startup/%.o: ../Startup/%.S
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -g -x assembler -I"c:/Users/rui/Desktop/iphone_screen/wch/code/hspi_usb3_ping_pong/hspi_usb3_ping_pong/Startup" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

