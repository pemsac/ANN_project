################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/RNA35b.c \
../src/RNA35b_emxAPI.c \
../src/RNA35b_emxutil.c \
../src/RNA35b_initialize.c \
../src/RNA35b_terminate.c \
../src/main.c \
../src/rtGetInf.c \
../src/rtGetNaN.c \
../src/rt_nonfinite.c 

OBJS += \
./src/RNA35b.o \
./src/RNA35b_emxAPI.o \
./src/RNA35b_emxutil.o \
./src/RNA35b_initialize.o \
./src/RNA35b_terminate.o \
./src/main.o \
./src/rtGetInf.o \
./src/rtGetNaN.o \
./src/rt_nonfinite.o 

C_DEPS += \
./src/RNA35b.d \
./src/RNA35b_emxAPI.d \
./src/RNA35b_emxutil.d \
./src/RNA35b_initialize.d \
./src/RNA35b_terminate.d \
./src/main.d \
./src/rtGetInf.d \
./src/rtGetNaN.d \
./src/rt_nonfinite.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM gcc compiler'
	arm-xilinx-eabi-gcc -Wall -O2 -c -fmessage-length=0 -MT"$@" -I../../ANN_Heartbeat_Sorter_SW_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


