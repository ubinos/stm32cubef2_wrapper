set_cache(PROJECT_BUILD_TYPE "Release" STRING)

include(${PROJECT_UBINOS_DIR}/config/ubinos_stm3221geval.cmake)

include(${PROJECT_LIBRARY_DIR}/stm32cubef2_wrapper/config/stm32cubef2.cmake)

####

set(INCLUDE__APP TRUE)
set(APP__NAME "myadc_dualmodeinterleaved")

get_filename_component(_tmp_source_dir "${CMAKE_CURRENT_LIST_DIR}/myadc_dualmodeinterleaved" ABSOLUTE)

file(GLOB_RECURSE _tmp_sources
    "${_tmp_source_dir}/*.c"
    "${_tmp_source_dir}/*.cpp"
    "${_tmp_source_dir}/*.S"
    "${_tmp_source_dir}/*.s")

set(PROJECT_APP_SOURCES ${PROJECT_APP_SOURCES} ${_tmp_sources})

get_filename_component(_tmp_source_dir "${STM32CUBEF2__BASE_DIR}/Projects/STM322xG_EVAL/Examples/ADC/ADC_DualModeInterleaved" ABSOLUTE)

include_directories(${_tmp_source_dir}/Inc)


