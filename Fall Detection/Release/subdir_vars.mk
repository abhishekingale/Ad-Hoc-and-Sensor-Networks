################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
CFG_SRCS += \
../project_zero_app.cfg 

SYSCFG_SRCS += \
../project_zero.syscfg 

C_SRCS += \
./syscfg/ti_ble_config.c \
./syscfg/ti_radio_config.c \
./syscfg/ti_drivers_config.c 

GEN_CMDS += \
./configPkg/linker.cmd 

GEN_FILES += \
./syscfg/ti_ble_config.c \
./syscfg/ti_build_config.opt \
./syscfg/ti_ble_app_config.opt \
./syscfg/ti_radio_config.c \
./syscfg/ti_drivers_config.c \
./configPkg/linker.cmd \
./configPkg/compiler.opt 

GEN_MISC_DIRS += \
./syscfg/ \
./configPkg/ 

C_DEPS += \
./syscfg/ti_ble_config.d \
./syscfg/ti_radio_config.d \
./syscfg/ti_drivers_config.d 

GEN_OPTS += \
./syscfg/ti_build_config.opt \
./syscfg/ti_ble_app_config.opt \
./configPkg/compiler.opt 

OBJS += \
./syscfg/ti_ble_config.obj \
./syscfg/ti_radio_config.obj \
./syscfg/ti_drivers_config.obj 

GEN_MISC_FILES += \
./syscfg/ti_ble_config.h \
./syscfg/ti_radio_config.h \
./syscfg/ti_drivers_config.h \
./syscfg/syscfg_c.rov.xs 

GEN_MISC_DIRS__QUOTED += \
"syscfg\" \
"configPkg\" 

OBJS__QUOTED += \
"syscfg\ti_ble_config.obj" \
"syscfg\ti_radio_config.obj" \
"syscfg\ti_drivers_config.obj" 

GEN_MISC_FILES__QUOTED += \
"syscfg\ti_ble_config.h" \
"syscfg\ti_radio_config.h" \
"syscfg\ti_drivers_config.h" \
"syscfg\syscfg_c.rov.xs" 

C_DEPS__QUOTED += \
"syscfg\ti_ble_config.d" \
"syscfg\ti_radio_config.d" \
"syscfg\ti_drivers_config.d" 

GEN_FILES__QUOTED += \
"syscfg\ti_ble_config.c" \
"syscfg\ti_build_config.opt" \
"syscfg\ti_ble_app_config.opt" \
"syscfg\ti_radio_config.c" \
"syscfg\ti_drivers_config.c" \
"configPkg\linker.cmd" \
"configPkg\compiler.opt" 

SYSCFG_SRCS__QUOTED += \
"../project_zero.syscfg" 

C_SRCS__QUOTED += \
"./syscfg/ti_ble_config.c" \
"./syscfg/ti_radio_config.c" \
"./syscfg/ti_drivers_config.c" 


