################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third-Party/SEGGER/SEGGER/SEGGER_RTT.c \
../Third-Party/SEGGER/SEGGER/SEGGER_SYSVIEW.c 

OBJS += \
./Third-Party/SEGGER/SEGGER/SEGGER_RTT.o \
./Third-Party/SEGGER/SEGGER/SEGGER_SYSVIEW.o 

C_DEPS += \
./Third-Party/SEGGER/SEGGER/SEGGER_RTT.d \
./Third-Party/SEGGER/SEGGER/SEGGER_SYSVIEW.d 


# Each subdirectory must supply rules for building sources it contributes
Third-Party/SEGGER/SEGGER/SEGGER_RTT.o: ../Third-Party/SEGGER/SEGGER/SEGGER_RTT.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F413_423xx -DSTM32F413ZHT -DSTM32 -DSTM32F4 -DNUCLEO_F413ZH -DDEBUG -DUSE_STDPERIPH_DRIVER -DNUCLEO_F413ZH -DSTM32F413ZHTx -DSTM32F4 -DDEBUG -c -I../Inc -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/Third-Party/SEGGER/Config" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/Third-Party/SEGGER/OS" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/Third-Party/SEGGER/SEGGER" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/Third-Party/FreeRTOS/org/Source/include" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/config" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/CMSIS/core" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/CMSIS/device" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/inc" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-Party/SEGGER/SEGGER/SEGGER_RTT.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Third-Party/SEGGER/SEGGER/SEGGER_SYSVIEW.o: ../Third-Party/SEGGER/SEGGER/SEGGER_SYSVIEW.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F413_423xx -DSTM32F413ZHT -DSTM32 -DSTM32F4 -DNUCLEO_F413ZH -DDEBUG -DUSE_STDPERIPH_DRIVER -DNUCLEO_F413ZH -DSTM32F413ZHTx -DSTM32F4 -DDEBUG -c -I../Inc -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/Third-Party/SEGGER/Config" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/Third-Party/SEGGER/OS" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/Third-Party/SEGGER/SEGGER" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/Third-Party/FreeRTOS/org/Source/include" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/config" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/CMSIS/core" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/CMSIS/device" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/inc" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/led_button_freertos/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Third-Party/SEGGER/SEGGER/SEGGER_SYSVIEW.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

