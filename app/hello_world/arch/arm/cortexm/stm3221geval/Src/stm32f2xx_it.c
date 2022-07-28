#include <ubinos.h>

#if (UBINOS__BSP__BOARD_MODEL == UBINOS__BSP__BOARD_MODEL__STM3221GEVAL)
#if (UBINOS__BSP__BOARD_VARIATION__STM3221GEVAL == 1)

#include "main.h"
#include "stm32f2xx_it.h"

/**
 * @brief  This function handles DTTY_STM32_UART interrupt request.
 * @param  None
 * @retval None
 */
void DTTY_STM32_UART_IRQHandler(void)
{
#if (STM32CUBEF2__DTTY_STM32_UART_ENABLE == 1)
    HAL_UART_IRQHandler(&DTTY_STM32_UART_HANDLE);
#endif /* (STM32CUBEF2__DTTY_STM32_UART_ENABLE == 1) */
}

#endif /* (UBINOS__BSP__BOARD_VARIATION__STM3221GEVAL == 1) */
#endif /* (UBINOS__BSP__BOARD_MODEL == UBINOS__BSP__BOARD_MODEL__STM3221GEVAL) */

