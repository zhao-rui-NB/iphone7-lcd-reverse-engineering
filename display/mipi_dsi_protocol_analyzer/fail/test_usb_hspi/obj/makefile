################################################################################
# MRS Version: 2.2.0
# Automatically-generated file. Do not edit!
################################################################################
-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include User/USB30/subdir.mk
-include User/USB20/subdir.mk
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
test_usb_hspi.hex \

SECONDARY_LIST += \
test_usb_hspi.lst \

SECONDARY_SIZE += \
test_usb_hspi.siz \


# All Target
all: 
	$(MAKE) --no-print-directory main-build 

main-build: test_usb_hspi.elf secondary-outputs

# Tool invocations
test_usb_hspi.elf: $(OBJS) $(USER_OBJS)
	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -g -T "c:/Users/rui/Desktop/iphone_screen/wch/code/test_usb_hspi/test_usb_hspi/.ld" -nostartfiles -Xlinker --gc-sections -L"c:\Users\rui\Desktop\iphone_screen\wch\code\test_usb_hspi\test_usb_hspi" -Xlinker --print-memory-usage -Xlinker --print-memory-usage -Wl,-Map,"test_usb_hspi.map" --specs=nano.specs --specs=nosys.specs -o "test_usb_hspi.elf" $(OBJS) $(USER_OBJS) $(LIBS)
test_usb_hspi.hex: test_usb_hspi.elf
	@	riscv-none-embed-objcopy -O ihex "test_usb_hspi.elf" "test_usb_hspi.hex"
test_usb_hspi.lst: test_usb_hspi.elf
	@	riscv-none-embed-objdump --source --all-headers --demangle --line-numbers --wide "test_usb_hspi.elf" > "test_usb_hspi.lst"
test_usb_hspi.siz: test_usb_hspi.elf
	riscv-none-embed-size --format=berkeley "test_usb_hspi.elf"

# Other Targets
clean:
	-$(RM) $(OBJS) $(EXPANDS) $(CALLGRAPH_DOT) $(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(S_DEPS)$(S_UPPER_DEPS)$(ASM_DEPS)$(ASM_UPPER_DEPS)$(C_DEPS) test_usb_hspi.elf

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets