###############################################################################

%:
	@echo ""
	@echo ""
	
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_DIR=../config CONFIG_NAME=stm32cubef2_stm3221geval_baremetal
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=adc_dualmodeinterleaved_stm3221geval_baremetal
	@echo ""
	@echo ""
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=adc_regularconversion_dma_stm3221geval_baremetal
	@echo ""
	@echo ""
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=adc_regularconversion_interrupt_stm3221geval_baremetal
	@echo ""
	@echo ""
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=adc_regularconversion_polling_stm3221geval_baremetal
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=myadc_dualmodeinterleaved_stm3221geval
	@echo ""
	@echo ""
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=myadc_regularconversion_dma_stm3221geval
	@echo ""
	@echo ""
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=myadc_regularconversion_interrupt_stm3221geval
	@echo ""
	@echo ""
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=myadc_regularconversion_polling_stm3221geval
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=mygpio_exti_stm3221geval
	@echo ""
	@echo ""
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=mygpio_iotoggle_stm3221geval
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=myuart_printf_stm3221geval
	@echo ""
	@echo ""
	
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_DIR=../config CONFIG_NAME=stm32cubef2_nucleof207zg_baremetal
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=adc_regularconversion_interrupt_nucleof207zg_baremetal
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=adc_singleconversion_triggersw_dma_nucleof207zg_baremetal
	@echo ""
	@echo ""
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=adc_multichannelsingleconversion_nucleof207zg_baremetal
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=flash_eraseprogram_nucleof207zg_baremetal
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=tim_timebase_stm3221geval_baremetal
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=tim_ocactive_stm3221geval_baremetal
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=tim_ocinactive_stm3221geval_baremetal
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=tim_octoggle_stm3221geval_baremetal
	@echo ""
	@echo ""
	
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=myflash_eraseprogram_nucleof207zg
	@echo ""
	@echo ""
	
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=mygpio_exti_nucleof207zg
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=mygpio_iotoggle_nucleof207zg
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=myuart_printf_nucleof207zg
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=mytim_timebase_stm3221geval
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=helloworld_mt_stm3221geval_rtctick
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=ubik_tester_stm3221geval_rtctick
	@echo ""
	@echo ""

	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=cli_tester_stm3221geval_rtctick
	@echo ""
	@echo ""

	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=helloworld_mt_nucleof207zg_rtctick
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=ubik_tester_nucleof207zg_rtctick
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=cli_tester_nucleof207zg_rtctick
	@echo ""
	@echo ""
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""
	@echo ""
	make -f makefile.mk $@ CONFIG_NAME=cli_tester_nucleof207zg_rtctick_nostlink
	@echo ""
	@echo ""
	
	
	@echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	@echo ""

###############################################################################


