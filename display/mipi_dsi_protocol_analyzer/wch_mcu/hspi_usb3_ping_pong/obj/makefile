################################################################################
# MRS Version: 2.2.0
# Automatically-generated file. Do not edit!
################################################################################
-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include User/USB30/subdir.mk
-include User/HSPI/subdir.mk
-include User/subdir.mk
-include Startup/subdir.mk
-include RVMSIS/subdir.mk
-include Peripheral/src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
hspi_usb3_ping_pong.hex \

SECONDARY_LIST += \
hspi_usb3_ping_pong.lst \

SECONDARY_SIZE += \
hspi_usb3_ping_pong.siz \


# All Target
all: 
	$(MAKE) --no-print-directory main-build 

main-build: hspi_usb3_ping_pong.elf secondary-outputs

# Tool invocations
hspi_usb3_ping_pong.elf: $(OBJS) $(USER_OBJS)
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -g -T "c:/Users/rui/Desktop/iphone_screen/wch/code/hspi_usb3_ping_pong/hspi_usb3_ping_pong/.ld" -nostartfiles -Xlinker --gc-sections -L"c:\Users\rui\Desktop\iphone_screen\wch\code\hspi_usb3_ping_pong\hspi_usb3_ping_pong" -Xlinker --print-memory-usage -Xlinker --print-memory-usage -Wl,-Map,"hspi_usb3_ping_pong.map" --specs=nano.specs --specs=nosys.specs -o "hspi_usb3_ping_pong.elf" $(OBJS) $(USER_OBJS) $(LIBS)
hspi_usb3_ping_pong.hex: hspi_usb3_ping_pong.elf
	@	riscv-none-embed-objcopy -O ihex "hspi_usb3_ping_pong.elf" "hspi_usb3_ping_pong.hex"
hspi_usb3_ping_pong.lst: hspi_usb3_ping_pong.elf
	@	riscv-none-embed-objdump --source --all-headers --demangle --line-numbers --wide "hspi_usb3_ping_pong.elf" > "hspi_usb3_ping_pong.lst"
hspi_usb3_ping_pong.siz: hspi_usb3_ping_pong.elf
	riscv-none-embed-size --format=berkeley "hspi_usb3_ping_pong.elf"

# Other Targets
clean:
	-$(RM) $(OBJS) $(EXPANDS) $(CALLGRAPH_DOT) $(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(S_DEPS)$(S_UPPER_DEPS)$(ASM_DEPS)$(ASM_UPPER_DEPS)$(C_DEPS) hspi_usb3_ping_pong.elf

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets