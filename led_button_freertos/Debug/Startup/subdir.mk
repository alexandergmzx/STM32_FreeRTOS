################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Startup/startup_stm32f413zhtx.s 

OBJS += \
./Startup/startup_stm32f413zhtx.o 

S_DEPS += \
./Startup/startup_stm32f413zhtx.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/startup_stm32f413zhtx.o: ../Startup/startup_stm32f413zhtx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DSTM32F413_423xx -DSTM32F413ZHT -DSTM32 -DSTM32F4 -DNUCLEO_F413ZH -DDEBUG -DUSE_STDPERIPH_DRIVER -c -x assembler-with-cpp -MMD -MP -MF"Startup/startup_stm32f413zhtx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

