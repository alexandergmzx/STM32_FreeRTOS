################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.c 

OBJS += \
./Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o 

C_DEPS += \
./Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d 


# Each subdirectory must supply rules for building sources it contributes
Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o: ../Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F413_423xx -DSTM32F413ZHT -DSTM32 -DSTM32F4 -DNUCLEO_F413ZH -DDEBUG -DUSE_STDPERIPH_DRIVER -DNUCLEO_F413ZH -DSTM32F413ZHTx -DSTM32F4 -DDEBUG -c -I../Inc -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_buttonIT_freertos2/Third-Party/SEGGER/Config" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_buttonIT_freertos2/Third-Party/SEGGER/OS" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_buttonIT_freertos2/Third-Party/SEGGER/SEGGER" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_buttonIT_freertos2/Third-Party/FreeRTOS/org/Source/include" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_buttonIT_freertos2/config" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_buttonIT_freertos2/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_buttonIT_freertos2/CMSIS/core" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_buttonIT_freertos2/CMSIS/device" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_buttonIT_freertos2/inc" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_buttonIT_freertos2/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

