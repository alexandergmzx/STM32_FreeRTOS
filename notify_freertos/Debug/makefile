################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include Third-Party/SEGGER/SEGGER/subdir.mk
-include Third-Party/SEGGER/OS/subdir.mk
-include Third-Party/SEGGER/Config/subdir.mk
-include Third-Party/FreeRTOS/org/Source/portable/MemMang/subdir.mk
-include Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F/subdir.mk
-include Third-Party/FreeRTOS/org/Source/subdir.mk
-include StdPeriph_Driver/src/subdir.mk
-include Startup/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
notify_freertos.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
notify_freertos.list \

OBJCOPY_BIN += \
notify_freertos.bin \

OBJCOPY_VERILOG += \
notify_freertos.verilog \


# All Target
all: notify_freertos.elf secondary-outputs

# Tool invocations
notify_freertos.elf: $(OBJS) $(USER_OBJS) /home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/STM32F413ZHTX_FLASH.ld
	arm-none-eabi-gcc -o "notify_freertos.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/STM32F413ZHTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="notify_freertos.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

notify_freertos.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "notify_freertos.list"
	@echo 'Finished building: $@'
	@echo ' '

notify_freertos.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "notify_freertos.bin"
	@echo 'Finished building: $@'
	@echo ' '

notify_freertos.verilog: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O verilog $(EXECUTABLES) "notify_freertos.verilog"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN) $(OBJCOPY_VERILOG)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
