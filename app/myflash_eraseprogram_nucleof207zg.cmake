set_cache(UBINOS__BSP__LINK_MEMMAP_FLASH_ORIGIN  0x08000000 STRING)
set_cache(UBINOS__BSP__LINK_MEMMAP_FLASH_LENGTH  0x00080000 STRING)
set_cache(UBINOS__BSP__LINK_MEMMAP_FLASH2_ORIGIN 0x08080000 STRING)
set_cache(UBINOS__BSP__LINK_MEMMAP_FLASH2_LENGTH 0x00080000 STRING)

include(${PROJECT_UBINOS_DIR}/config/ubinos_nucleof207zg.cmake)

include(${PROJECT_LIBRARY_DIR}/stm32cubef2_wrapper/config/stm32cubef2.cmake)

####

set(INCLUDE__APP TRUE)
set(APP__NAME "myflash_eraseprogram")

get_filename_component(_tmp_source_dir "${CMAKE_CURRENT_LIST_DIR}/myflash_eraseprogram" ABSOLUTE)

file(GLOB_RECURSE _tmp_sources
    "${_tmp_source_dir}/*.c"
    "${_tmp_source_dir}/*.cpp"
    "${_tmp_source_dir}/*.S"
    "${_tmp_source_dir}/*.s")

set(PROJECT_APP_SOURCES ${PROJECT_APP_SOURCES} ${_tmp_sources})

get_filename_component(_tmp_source_dir "${STM32CUBEF2__BASE_DIR}/Projects/NUCLEO-F207ZG/Examples/FLASH/FLASH_EraseProgram" ABSOLUTE)

include_directories(${_tmp_source_dir}/Inc)
