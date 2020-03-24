#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.M4F{1,0,18.12,3
#
ifeq (,$(MK_NOGENDEPS))
-include package/cfg/project_zero_app_pem4f.oem4f.dep
package/cfg/project_zero_app_pem4f.oem4f.dep: ;
endif

package/cfg/project_zero_app_pem4f.oem4f: | .interfaces
package/cfg/project_zero_app_pem4f.oem4f: package/cfg/project_zero_app_pem4f.c package/cfg/project_zero_app_pem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c  -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/ti/sail_1_50_00_00/source/ti/sail/bme280" --include_path="C:/Users/bramd/workspace_v9_2/week8_project_zero_app_CC13X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/bramd/workspace_v9_2/week8_project_zero_app_CC13X2R1_LAUNCHXL_tirtos_ccs/Debug" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/examples/rtos/CC1352R1_LAUNCHXL/ble5stack/project_zero/Application" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/examples/rtos/CC1352R1_LAUNCHXL/ble5stack/project_zero/Application/acclService.h" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/common/cc26xx/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/boards/CC1352R1_LAUNCHXL/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/drivers/nvs/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/common/cc26xx/oad/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/profiles/oad/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/profiles/dev_info" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/profiles/simple_profile" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/common/nv" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/posix/ccs" --include_path="C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include" --define=uartlog_FILE="""" --define=SECURITY --define=DeviceFamily_CC13X2 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi   -qq -pdsw225 -ms --fp_mode=strict --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/project_zero_app_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_18_12_3 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg -fc $<
	$(MKDEP) -a $@.dep -p package/cfg -s oem4f $< -C   -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/ti/sail_1_50_00_00/source/ti/sail/bme280" --include_path="C:/Users/bramd/workspace_v9_2/week8_project_zero_app_CC13X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/bramd/workspace_v9_2/week8_project_zero_app_CC13X2R1_LAUNCHXL_tirtos_ccs/Debug" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/examples/rtos/CC1352R1_LAUNCHXL/ble5stack/project_zero/Application" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/examples/rtos/CC1352R1_LAUNCHXL/ble5stack/project_zero/Application/acclService.h" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/common/cc26xx/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/boards/CC1352R1_LAUNCHXL/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/drivers/nvs/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/common/cc26xx/oad/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/profiles/oad/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/profiles/dev_info" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/profiles/simple_profile" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/common/nv" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/posix/ccs" --include_path="C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include" --define=uartlog_FILE="""" --define=SECURITY --define=DeviceFamily_CC13X2 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi   -qq -pdsw225 -ms --fp_mode=strict --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/project_zero_app_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_18_12_3 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/project_zero_app_pem4f.oem4f: export C_DIR=
package/cfg/project_zero_app_pem4f.oem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)
package/cfg/project_zero_app_pem4f.oem4f: Path:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)

package/cfg/project_zero_app_pem4f.sem4f: | .interfaces
package/cfg/project_zero_app_pem4f.sem4f: package/cfg/project_zero_app_pem4f.c package/cfg/project_zero_app_pem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f -n $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c -n -s --symdebug:none -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/ti/sail_1_50_00_00/source/ti/sail/bme280" --include_path="C:/Users/bramd/workspace_v9_2/week8_project_zero_app_CC13X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/bramd/workspace_v9_2/week8_project_zero_app_CC13X2R1_LAUNCHXL_tirtos_ccs/Debug" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/examples/rtos/CC1352R1_LAUNCHXL/ble5stack/project_zero/Application" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/examples/rtos/CC1352R1_LAUNCHXL/ble5stack/project_zero/Application/acclService.h" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/common/cc26xx/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/boards/CC1352R1_LAUNCHXL/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/drivers/nvs/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/common/cc26xx/oad/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/profiles/oad/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/profiles/dev_info" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/profiles/simple_profile" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/common/nv" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/posix/ccs" --include_path="C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include" --define=uartlog_FILE="""" --define=SECURITY --define=DeviceFamily_CC13X2 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi   -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/project_zero_app_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_18_12_3 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg -fc $<
	$(MKDEP) -a $@.dep -p package/cfg -s oem4f $< -C  -n -s --symdebug:none -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/ti/sail_1_50_00_00/source/ti/sail/bme280" --include_path="C:/Users/bramd/workspace_v9_2/week8_project_zero_app_CC13X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/bramd/workspace_v9_2/week8_project_zero_app_CC13X2R1_LAUNCHXL_tirtos_ccs/Debug" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/examples/rtos/CC1352R1_LAUNCHXL/ble5stack/project_zero/Application" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/examples/rtos/CC1352R1_LAUNCHXL/ble5stack/project_zero/Application/acclService.h" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/common/cc26xx/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/boards/CC1352R1_LAUNCHXL/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/drivers/nvs/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/common/cc26xx/oad/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/profiles/oad/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/profiles/dev_info" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/profiles/simple_profile" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/common/nv" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_3_40_00_02/source/ti/posix/ccs" --include_path="C:/ti/ccs920/ccs/tools/compiler/ti-cgt-arm_18.12.3.LTS/include" --define=uartlog_FILE="""" --define=SECURITY --define=DeviceFamily_CC13X2 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi   -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/project_zero_app_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_18_12_3 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/project_zero_app_pem4f.sem4f: export C_DIR=
package/cfg/project_zero_app_pem4f.sem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)
package/cfg/project_zero_app_pem4f.sem4f: Path:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)

clean,em4f ::
	-$(RM) package/cfg/project_zero_app_pem4f.oem4f
	-$(RM) package/cfg/project_zero_app_pem4f.sem4f

project_zero_app.pem4f: package/cfg/project_zero_app_pem4f.oem4f package/cfg/project_zero_app_pem4f.mak

clean::
	-$(RM) package/cfg/project_zero_app_pem4f.mak
