#
# Copyright (c) 2020 Sung Ho Park and CSOS
# 
# SPDX-License-Identifier: Apache-2.0
#

set_cache(UBINOS__UBIK__TICK_TYPE "RTC" STRING)

include(${PROJECT_UBINOS_DIR}/config/ubinos_stm3221geval.cmake)
include(${PROJECT_UBINOS_DIR}/config/ubinos/ubik_test.cmake)
include(${PROJECT_LIBRARY_DIR}/stm32cubef2_wrapper/config/stm32cubef2.cmake)

include(${PROJECT_UBINOS_DIR}/app/ubik_tester.cmake)

####

get_filename_component(_tmp_source_dir "${STM32CUBEF2__BASE_DIR}/Projects/STM322xG_EVAL/Examples/TIM/TIM_OCToggle/" ABSOLUTE)

include_directories(${_tmp_source_dir}/Inc)

