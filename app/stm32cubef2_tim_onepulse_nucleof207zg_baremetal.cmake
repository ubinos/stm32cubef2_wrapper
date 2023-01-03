#
# Copyright (c) 2023 Sung Ho Park and CSOS
#
# SPDX-License-Identifier: Apache-2.0
#

# ubinos_config_info {"name_base": "stm32cubef2_tim_onepulse", "build_type": "cmake_ubinos", "app": true}

set_cache(UBINOS__UBICLIB__USE_STDIO_RETARGETING FALSE BOOL)
set_cache(UBINOS__BSP__USE_DTTY FALSE BOOL)

include(${PROJECT_UBINOS_DIR}/config/ubinos_nucleof207zg_baremetal.cmake)
include(${PROJECT_LIBRARY_DIR}/stm32cubef2_wrapper/config/stm32cubef2.cmake)
include(${PROJECT_LIBRARY_DIR}/stm32cubef2_extension/config/stm32cubef2_extension.cmake)

####

set(INCLUDE__APP TRUE)
set(APP__NAME "stm32cubef2_tim_onepulse")

get_filename_component(_tmp_source_dir "${STM32CUBEF2__BASE_DIR}/Projects/NUCLEO-F207ZG/Examples/TIM/TIM_OnePulse/" ABSOLUTE)

include_directories(${_tmp_source_dir}/Inc)

set(PROJECT_APP_SOURCES ${PROJECT_APP_SOURCES} ${_tmp_source_dir}/Src/main.c)
set(PROJECT_APP_SOURCES ${PROJECT_APP_SOURCES} ${_tmp_source_dir}/Src/stm32f2xx_it.c)
set(PROJECT_APP_SOURCES ${PROJECT_APP_SOURCES} ${_tmp_source_dir}/Src/stm32f2xx_hal_msp.c)
