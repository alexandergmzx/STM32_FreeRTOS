################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c \
../src/syscalls.c \
../src/system_stm32f4xx.c 

OBJS += \
./src/main.o \
./src/syscalls.o \
./src/system_stm32f4xx.o 

C_DEPS += \
./src/main.d \
./src/syscalls.d \
./src/system_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/main.o: ../src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F413_423xx -DSTM32F413ZHT -DSTM32 -DSTM32F4 -DNUCLEO_F413ZH -DDEBUG -DUSE_STDPERIPH_DRIVER -DNUCLEO_F413ZH -DSTM32F413ZHTx -DSTM32F4 -DDEBUG -c -I../Inc -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/Third-Party/SEGGER/Config" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/Third-Party/SEGGER/OS" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/Third-Party/SEGGER/SEGGER" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/Third-Party/FreeRTOS/org/Source/include" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/config" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/CMSIS/core" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/CMSIS/device" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/inc" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/syscalls.o: ../src/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F413_423xx -DSTM32F413ZHT -DSTM32 -DSTM32F4 -DNUCLEO_F413ZH -DDEBUG -DUSE_STDPERIPH_DRIVER -DNUCLEO_F413ZH -DSTM32F413ZHTx -DSTM32F4 -DDEBUG -c -I../Inc -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/Third-Party/SEGGER/Config" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/Third-Party/SEGGER/OS" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/Third-Party/SEGGER/SEGGER" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/Third-Party/FreeRTOS/org/Source/include" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/config" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/CMSIS/core" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/CMSIS/device" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/inc" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/system_stm32f4xx.o: ../src/system_stm32f4xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DSTM32 -DSTM32F413_423xx -DSTM32F413ZHT -DSTM32 -DSTM32F4 -DNUCLEO_F413ZH -DDEBUG -DUSE_STDPERIPH_DRIVER -DNUCLEO_F413ZH -DSTM32F413ZHTx -DSTM32F4 -DDEBUG -c -I../Inc -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/Third-Party/SEGGER/Config" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/Third-Party/SEGGER/OS" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/Third-Party/SEGGER/SEGGER" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/Third-Party/FreeRTOS/org/Source/include" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/config" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/CMSIS/core" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/CMSIS/device" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/inc" -I"/home/alex5/Documents/STMCubeIDE/FreeRTOS_Workspace/notify_freertos/StdPeriph_Driver/inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"src/system_stm32f4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

