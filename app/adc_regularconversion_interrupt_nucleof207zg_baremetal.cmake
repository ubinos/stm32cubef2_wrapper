set_cache(UBINOS__UBICLIB__USE_STDIO_RETARGETING FALSE BOOL)
set_cache(UBINOS__BSP__USE_DTTY FALSE BOOL)

include(${PROJECT_UBINOS_DIR}/config/ubinos_nucleof207zg_baremetal.cmake)

include(${PROJECT_LIBRARY_DIR}/stm32cubef2_wrapper/config/stm32cubef2.cmake)

####

set(INCLUDE__APP TRUE)
set(APP__NAME "adc_regularconversion_interrupt")

get_filename_component(_tmp_source_dir "${STM32CUBEF2__BASE_DIR}/Projects/NUCLEO-F207ZG/Examples/ADC/ADC_RegularConversion_Interrupt/" ABSOLUTE)

set(PROJECT_APP_SOURCES ${PROJECT_APP_SOURCES} ${_tmp_source_dir}/Src/main.c)
set(PROJECT_APP_SOURCES ${PROJECT_APP_SOURCES} ${_tmp_source_dir}/Src/stm32f2xx_it.c)
set(PROJECT_APP_SOURCES ${PROJECT_APP_SOURCES} ${_tmp_source_dir}/Src/stm32f2xx_hal_msp.c)

include_directories(${_tmp_source_dir}/Inc)


