/**
 ******************************************************************************
 * @file    UART/UART_HyperTerminal_DMA/Inc/stm32f2xx_it.h
 * @author  MCD Application Team
 * @brief   This file contains the headers of the interrupt handlers.
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; Copyright (c) 2017 STMicroelectronics.
 * All rights reserved.</center></h2>
 *
 * This software component is licensed by ST under BSD 3-Clause license,
 * the "License"; You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at:
 *                        opensource.org/licenses/BSD-3-Clause
 *
 ******************************************************************************
 */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __STM32F2xx_IT_H
#define __STM32F2xx_IT_H

#ifdef __cplusplus
extern "C"
{
#endif 

/* Includes ------------------------------------------------------------------*/
/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */

void DTTY_STM32_UART_DMA_RX_IRQHandler(void);
void DTTY_STM32_UART_DMA_TX_IRQHandler(void);
void DTTY_STM32_UART_IRQHandler(void);

#ifdef __cplusplus
}
#endif

#endif /* __STM32F2xx_IT_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
