#include <ubinos.h>

#if (INCLUDE__APP__cli_tester == 1)

#if (UBINOS__BSP__STM32_STM32XXXX == 1)

#include "main.h"
#include "stm32f2xx_it.h"

/**
 * @brief  This function handles DMA RX interrupt request.
 * @param  None
 * @retval None
 */
void DTTY_STM32_UART_DMA_RX_IRQHandler(void)
{
    HAL_DMA_IRQHandler(DTTY_STM32_UART_HANDLE.hdmarx);
}

/**
 * @brief  This function handles DMA TX interrupt request.
 * @param  None
 * @retval None
 */
void DTTY_STM32_UART_DMA_TX_IRQHandler(void)
{
    HAL_DMA_IRQHandler(DTTY_STM32_UART_HANDLE.hdmatx);
}

/**
 * @brief  This function handles DTTY_STM32_UART interrupt request.
 * @param  None
 * @retval None
 */
void DTTY_STM32_UART_IRQHandler(void)
{
    HAL_UART_IRQHandler(&DTTY_STM32_UART_HANDLE);
}

#endif /* (UBINOS__BSP__STM32_STM32XXXX == 1) */

#endif /* (INCLUDE__APP__cli_tester == 1) */

