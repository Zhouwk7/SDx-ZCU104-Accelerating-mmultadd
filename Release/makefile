################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf _sds sd_card

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: pre-build main-build

# Main-build Target
main-build: muladd.elf

# Tool invocations
muladd.elf: $(OBJS)  $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: SDS++ Linker'
	sds++ --remote_ip_cache D:/xilinx/SDSoC_IDE/workspace/ip_cache -o "muladd.elf" $(OBJS) $(USER_OBJS) $(LIBS) -dmclkid 3  -mno-boot-files  -perf-root main -perf-est swdata.xml -perf-funcs mmult,madd -sds-sys-config a53_linux -sds-proc a53_linux -sds-pf "zcu104"
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(EXECUTABLES)$(C_UPPER_DEPS)$(OBJS)$(CXX_DEPS)$(C_DEPS)$(CPP_DEPS) muladd.elf
	-@echo ' '

pre-build:
	-sdsoc_make_clean Release
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: main-build pre-build

-include ../makefile.targets
