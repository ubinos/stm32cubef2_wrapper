#
# Copyright (c) 2020 Sung Ho Park and CSOS
#
# SPDX-License-Identifier: Apache-2.0
#

# ubinos_config_info {"name_base": "nvmem_tester", "build_type": "cmake_ubinos", "app": true}

set_cache(UBINOS__BSP__LINK_MEMMAP_FLASH_ORIGIN  0x08000000 STRING)
set_cache(UBINOS__BSP__LINK_MEMMAP_FLASH_LENGTH  0x000E0000 STRING)
set_cache(UBINOS__BSP__LINK_MEMMAP_FLASH2_ORIGIN 0x080E0000 STRING)
set_cache(UBINOS__BSP__LINK_MEMMAP_FLASH2_LENGTH 0x00020000 STRING)

set_cache(UBINOS__UBIDRV__INCLUDE_NVMEM TRUE BOOL)

set_cache(UBINOS__UBIK__TICK_TYPE "RTC" STRING)

set_cache(UBINOS__BSP__DTTY_TYPE "EXTERNAL" STRING)
set_cache(STM32CUBEF2__DTTY_STM32_UART_ENABLE TRUE BOOL)

include(${PROJECT_UBINOS_DIR}/config/ubinos_nucleof207zg.cmake)
include(${PROJECT_LIBRARY_DIR}/stm32cubef2_wrapper/config/stm32cubef2.cmake)
include(${PROJECT_LIBRARY_DIR}/stm32cubef2_extension/config/stm32cubef2_extension.cmake)

####

set(INCLUDE__APP TRUE)
set(APP__NAME "nvmem_tester")

get_filename_component(_tmp_source_dir "${CMAKE_CURRENT_LIST_DIR}/${APP__NAME}" ABSOLUTE)
string(TOLOWER ${UBINOS__BSP__BOARD_VARIATION_NAME} _temp_board_model)

include_directories(${_tmp_source_dir}/arch/arm/cortexm/${_temp_board_model}/Inc)
include_directories(${_tmp_source_dir})

file(GLOB_RECURSE _tmp_sources
    "${_tmp_source_dir}/*.c"
    "${_tmp_source_dir}/*.cpp"
    "${_tmp_source_dir}/*.cc"
    "${_tmp_source_dir}/*.S")

set(PROJECT_APP_SOURCES ${PROJECT_APP_SOURCES} ${_tmp_sources})

include_directories(${_tmp_source_dir}/arch/arm/cortexm/nucleof207zg/Inc)

