#
# Copyright (c) 2020 Sung Ho Park and CSOS
#
# SPDX-License-Identifier: Apache-2.0
#

# {ubinos_config_type: [buildable, cmake, app]}

set_cache(UBINOS__UBIK__TICK_TYPE "RTC" STRING)

include(${PROJECT_UBINOS_DIR}/config/ubinos_stm3221geval.cmake)
include(${PROJECT_UBINOS_DIR}/config/ubinos/ubik_test.cmake)
include(${PROJECT_LIBRARY_DIR}/stm32cubef2_wrapper/config/stm32cubef2.cmake)

include(${PROJECT_UBINOS_DIR}/app/ubik_tester.cmake)

####

get_filename_component(_tmp_source_dir "${CMAKE_CURRENT_LIST_DIR}/ubik_tester/arch/arm/cortexm/stm3221geval" ABSOLUTE)

include_directories(${_tmp_source_dir}/Inc)

