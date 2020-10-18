set_cache(STM32CUBEF2__USE_HAL_DRIVER FALSE BOOL)
set_cache(STM32CUBEF2__USE_FULL_LL_DRIVER TRUE BOOL)

include(${PROJECT_UBINOS_DIR}/config/ubinos_nucleof207zg.cmake)

include(${PROJECT_LIBRARY_DIR}/stm32cubef2_wrapper/config/stm32cubef2.cmake)

####

set(INCLUDE__APP TRUE)
set(APP__NAME "myadc_multichannelsingleconversion")

get_filename_component(_tmp_source_dir "${CMAKE_CURRENT_LIST_DIR}/myadc_multichannelsingleconversion" ABSOLUTE)

file(GLOB_RECURSE _tmp_sources
    "${_tmp_source_dir}/*.c"
    "${_tmp_source_dir}/*.cpp"
    "${_tmp_source_dir}/*.S"
    "${_tmp_source_dir}/*.s")

set(PROJECT_APP_SOURCES ${PROJECT_APP_SOURCES} ${_tmp_sources})

get_filename_component(_tmp_source_dir "${STM32CUBEF2__BASE_DIR}/Projects/NUCLEO-F207ZG/Examples_LL/ADC/ADC_MultiChannelSingleConversion" ABSOLUTE)

include_directories(${_tmp_source_dir}/Inc)


