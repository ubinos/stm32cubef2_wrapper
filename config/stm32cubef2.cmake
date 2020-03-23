set(INCLUDE__STM32CUBEF2 TRUE)

set_cache_default(STM32CUBEF2__BASE_DIR "../../../../stm32cube/stm32cubef2_v01.09.00_full" STRING "stm32cubef2 project base dir")

set_cache_default(STM32CUBEF2__BOARD_NAME "STM322xG_EVAL" STRING "[STM322xG_EVAL | STM32F2XX_NUCLEO_144]")

set_cache_default(STM32CUBEF2__USE_HAL_DRIVER TRUE BOOL "Use STM32 Cube F2 HAL Driver")

set_cache_default(STM32CUBEF2__USE_FULL_LL_DRIVER FALSE BOOL "Use STM32 Cube F2 Full Low Level Driver")

####

set(_tmp_all_flags "")

if(NOT STM32CUBEF2__BOARD_NAME STREQUAL "")
    set(_tmp_all_flags "${_tmp_all_flags} -DUSE_${STM32CUBEF2__BOARD_NAME}")
else()
    message(FATAL_ERROR "Unsupported STM32CUBEF2__BOARD_NAME")
endif()

if(STM32CUBEF2__USE_HAL_DRIVER)
    set(_tmp_all_flags "${_tmp_all_flags} -DUSE_HAL_DRIVER")
endif()

if(STM32CUBEF2__USE_FULL_LL_DRIVER)
    set(_tmp_all_flags "${_tmp_all_flags} -DUSE_FULL_LL_DRIVER")
endif()

set(CMAKE_ASM_FLAGS "${_tmp_all_flags} ${CMAKE_ASM_FLAGS}")
set(CMAKE_C_FLAGS   "${_tmp_all_flags} ${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "${_tmp_all_flags} ${CMAKE_CXX_FLAGS}")

