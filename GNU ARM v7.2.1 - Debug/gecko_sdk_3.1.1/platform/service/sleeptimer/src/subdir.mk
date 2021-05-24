################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1/platform/service/sleeptimer/src/sl_sleeptimer.c \
/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c \
/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c \
/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c 

OBJS += \
./gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer.o \
./gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o \
./gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o \
./gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o 

C_DEPS += \
./gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer.d \
./gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d \
./gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.d \
./gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer.o: /Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1/platform/service/sleeptimer/src/sl_sleeptimer.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DNVM3_DEFAULT_MAX_OBJECT_SIZE=1400' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DEFR32BG22C224F512IM40=1' -I"/Users/clfilho/SimplicityStudio/May_21/soc_aoa_locator_connectionlessv2" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/common/toolchain/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/plugin/rail_util_aox" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/iostream/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/emdrv/nvm3/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/device_init/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/common/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/mbedtls/include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/emlib/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//protocol/bluetooth/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_cryptoacc_library/include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/hfxo_manager/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/emdrv/common/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//hardware/board/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/ram_interrupt_vector_init/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/se_manager/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/se_manager/src" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/common" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/ble" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/ieee802154" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/zwave" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/mfm" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_alt/include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//app/common/util/app_assert" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/sleeptimer/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/mpu/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/system/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/mbedtls/library" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/udelay/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/power_manager/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/silicon_labs/silabs_core/memory_manager" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/plugin/pa-conversions" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/plugin/pa-conversions/efr32xg22" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//app/bluetooth/common/ota_dfu" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/bootloader" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/bootloader/api" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/CMSIS/Include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/Device/SiliconLabs/EFR32BG22/Include" -I"/Users/clfilho/SimplicityStudio/May_21/soc_aoa_locator_connectionlessv2/config" -I"/Users/clfilho/SimplicityStudio/May_21/soc_aoa_locator_connectionlessv2/autogen" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer.d" -MT"gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o: /Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DNVM3_DEFAULT_MAX_OBJECT_SIZE=1400' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DEFR32BG22C224F512IM40=1' -I"/Users/clfilho/SimplicityStudio/May_21/soc_aoa_locator_connectionlessv2" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/common/toolchain/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/plugin/rail_util_aox" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/iostream/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/emdrv/nvm3/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/device_init/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/common/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/mbedtls/include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/emlib/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//protocol/bluetooth/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_cryptoacc_library/include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/hfxo_manager/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/emdrv/common/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//hardware/board/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/ram_interrupt_vector_init/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/se_manager/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/se_manager/src" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/common" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/ble" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/ieee802154" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/zwave" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/mfm" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_alt/include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//app/common/util/app_assert" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/sleeptimer/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/mpu/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/system/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/mbedtls/library" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/udelay/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/power_manager/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/silicon_labs/silabs_core/memory_manager" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/plugin/pa-conversions" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/plugin/pa-conversions/efr32xg22" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//app/bluetooth/common/ota_dfu" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/bootloader" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/bootloader/api" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/CMSIS/Include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/Device/SiliconLabs/EFR32BG22/Include" -I"/Users/clfilho/SimplicityStudio/May_21/soc_aoa_locator_connectionlessv2/config" -I"/Users/clfilho/SimplicityStudio/May_21/soc_aoa_locator_connectionlessv2/autogen" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d" -MT"gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o: /Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DNVM3_DEFAULT_MAX_OBJECT_SIZE=1400' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DEFR32BG22C224F512IM40=1' -I"/Users/clfilho/SimplicityStudio/May_21/soc_aoa_locator_connectionlessv2" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/common/toolchain/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/plugin/rail_util_aox" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/iostream/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/emdrv/nvm3/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/device_init/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/common/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/mbedtls/include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/emlib/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//protocol/bluetooth/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_cryptoacc_library/include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/hfxo_manager/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/emdrv/common/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//hardware/board/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/ram_interrupt_vector_init/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/se_manager/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/se_manager/src" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/common" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/ble" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/ieee802154" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/zwave" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/mfm" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_alt/include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//app/common/util/app_assert" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/sleeptimer/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/mpu/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/system/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/mbedtls/library" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/udelay/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/power_manager/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/silicon_labs/silabs_core/memory_manager" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/plugin/pa-conversions" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/plugin/pa-conversions/efr32xg22" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//app/bluetooth/common/ota_dfu" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/bootloader" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/bootloader/api" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/CMSIS/Include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/Device/SiliconLabs/EFR32BG22/Include" -I"/Users/clfilho/SimplicityStudio/May_21/soc_aoa_locator_connectionlessv2/config" -I"/Users/clfilho/SimplicityStudio/May_21/soc_aoa_locator_connectionlessv2/autogen" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.d" -MT"gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: /Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DNVM3_DEFAULT_MAX_OBJECT_SIZE=1400' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DEFR32BG22C224F512IM40=1' -I"/Users/clfilho/SimplicityStudio/May_21/soc_aoa_locator_connectionlessv2" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/common/toolchain/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/plugin/rail_util_aox" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/iostream/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/emdrv/nvm3/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/device_init/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/common/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/mbedtls/include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/emlib/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//protocol/bluetooth/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_cryptoacc_library/include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/hfxo_manager/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/emdrv/common/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//hardware/board/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/ram_interrupt_vector_init/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/se_manager/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/se_manager/src" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/common" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/ble" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/ieee802154" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/zwave" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/protocol/mfm" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_alt/include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//app/common/util/app_assert" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/sleeptimer/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/mpu/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/system/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/mbedtls/library" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/udelay/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/service/power_manager/inc" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/silicon_labs/silabs_core/memory_manager" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/plugin/pa-conversions" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/radio/rail_lib/plugin/pa-conversions/efr32xg22" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//app/bluetooth/common/ota_dfu" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/bootloader" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/bootloader/api" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/CMSIS/Include" -I"/Applications/SimplicityStudio5.app/Contents/Eclipse/developer/sdks/gecko_sdk_suite/v3.1//platform/Device/SiliconLabs/EFR32BG22/Include" -I"/Users/clfilho/SimplicityStudio/May_21/soc_aoa_locator_connectionlessv2/config" -I"/Users/clfilho/SimplicityStudio/May_21/soc_aoa_locator_connectionlessv2/autogen" -Os -Wall -Wextra -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d" -MT"gecko_sdk_3.1.1/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


