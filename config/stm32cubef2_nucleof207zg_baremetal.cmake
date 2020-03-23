set_cache(STM32CUBEF2__BOARD_NAME "STM32F2XX_NUCLEO_144" STRING)

include(${PROJECT_UBINOS_DIR}/config/ubinos_nucleof207zg_baremetal.cmake)

include(${CMAKE_CURRENT_LIST_DIR}/stm32cubef2.cmake)

####

get_filename_component(_tmp_source_dir "${STM32CUBEF2__BASE_DIR}" ABSOLUTE)

include_directories(${_tmp_source_dir}/Projects/NUCLEO-F207ZG/Examples/UART/UART_Printf/Inc)
