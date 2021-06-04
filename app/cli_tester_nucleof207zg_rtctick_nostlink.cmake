#
# Copyright (c) 2019 Sung Ho Park and CSOS
#
# SPDX-License-Identifier: Apache-2.0
#

# {ubinos_config_type: [buildable, cmake, app]}

set_cache(UBINOS__BSP__STM32_RCC_HSE_CONFIG "ON" STRING)

include(${CMAKE_CURRENT_LIST_DIR}/cli_tester_nucleof207zg_rtctick.cmake)

