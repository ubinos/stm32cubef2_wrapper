#include <ubinos.h>

#if (INCLUDE__APP__cli_tester == 1)

#if (UBINOS__BSP__STM32_STM32XXXX == 1)

#include "main.h"

/**
 * @brief UART MSP Initialization
 *        This function configures the hardware resources used in this example:
 *           - Peripheral's clock enable
 *           - Peripheral's GPIO Configuration
 *           - DMA configuration for transmission request by peripheral
 *           - NVIC configuration for DMA interrupt request enable
 * @param huart: UART handle pointer
 * @retval None
 */
void HAL_UART_MspInit(UART_HandleTypeDef *huart)
{
    static DMA_HandleTypeDef hdma_tx;
    static DMA_HandleTypeDef hdma_rx;

    GPIO_InitTypeDef GPIO_InitStruct;

    /*##-1- Enable peripherals and GPIO Clocks #################################*/
    /* Enable GPIO clock */
    DTTY_STM32_UART_TX_GPIO_CLK_ENABLE();
    DTTY_STM32_UART_RX_GPIO_CLK_ENABLE();
    /* Enable DTTY_STM32_UART clock */
    DTTY_STM32_UART_CLK_ENABLE();
    /* Enable DMA2 clock */
    DTTY_STM32_UART_DMA_CLK_ENABLE();

    /*##-2- Configure peripheral GPIO ##########################################*/
    /* UART TX GPIO pin configuration  */
    GPIO_InitStruct.Pin = DTTY_STM32_UART_TX_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FAST;
    GPIO_InitStruct.Alternate = DTTY_STM32_UART_TX_AF;

    HAL_GPIO_Init(DTTY_STM32_UART_TX_GPIO_PORT, &GPIO_InitStruct);

    /* UART RX GPIO pin configuration  */
    GPIO_InitStruct.Pin = DTTY_STM32_UART_RX_PIN;
    GPIO_InitStruct.Alternate = DTTY_STM32_UART_RX_AF;

    HAL_GPIO_Init(DTTY_STM32_UART_RX_GPIO_PORT, &GPIO_InitStruct);

    /*##-3- Configure the DMA streams ##########################################*/
    /* Configure the DMA handler for Transmission process */
    hdma_tx.Instance = DTTY_STM32_UART_TX_DMA_STREAM;

    hdma_tx.Init.Channel = DTTY_STM32_UART_TX_DMA_CHANNEL;
    hdma_tx.Init.Direction = DMA_MEMORY_TO_PERIPH;
    hdma_tx.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_tx.Init.MemInc = DMA_MINC_ENABLE;
    hdma_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
    hdma_tx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
    hdma_tx.Init.Mode = DMA_NORMAL;
    hdma_tx.Init.Priority = DMA_PRIORITY_LOW;
    hdma_tx.Init.FIFOMode = DMA_FIFOMODE_DISABLE;
    hdma_tx.Init.FIFOThreshold = DMA_FIFO_THRESHOLD_FULL;
    hdma_tx.Init.MemBurst = DMA_MBURST_INC4;
    hdma_tx.Init.PeriphBurst = DMA_PBURST_INC4;

    HAL_DMA_Init(&hdma_tx);

    /* Associate the initialized DMA handle to the UART handle */
    __HAL_LINKDMA(huart, hdmatx, hdma_tx);

    /* Configure the DMA handler for reception process */
    hdma_rx.Instance = DTTY_STM32_UART_RX_DMA_STREAM;

    hdma_rx.Init.Channel = DTTY_STM32_UART_RX_DMA_CHANNEL;
    hdma_rx.Init.Direction = DMA_PERIPH_TO_MEMORY;
    hdma_rx.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_rx.Init.MemInc = DMA_MINC_ENABLE;
    hdma_rx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
    hdma_rx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
    hdma_rx.Init.Mode = DMA_NORMAL;
    hdma_rx.Init.Priority = DMA_PRIORITY_HIGH;
    hdma_rx.Init.FIFOMode = DMA_FIFOMODE_DISABLE;
    hdma_rx.Init.FIFOThreshold = DMA_FIFO_THRESHOLD_FULL;
    hdma_rx.Init.MemBurst = DMA_MBURST_INC4;
    hdma_rx.Init.PeriphBurst = DMA_PBURST_INC4;

    HAL_DMA_Init(&hdma_rx);

    /* Associate the initialized DMA handle to the the UART handle */
    __HAL_LINKDMA(huart, hdmarx, hdma_rx);

    /*##-4- Configure the NVIC for DMA #########################################*/
    /* NVIC configuration for DMA transfer complete interrupt (DTTY_STM32_UART_TX) */
    HAL_NVIC_SetPriority(DTTY_STM32_UART_DMA_TX_IRQn, 0, 1);
    HAL_NVIC_EnableIRQ(DTTY_STM32_UART_DMA_TX_IRQn);

    /* NVIC configuration for DMA transfer complete interrupt (DTTY_STM32_UART_RX) */
    HAL_NVIC_SetPriority(DTTY_STM32_UART_DMA_RX_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DTTY_STM32_UART_DMA_RX_IRQn);

    /* NVIC configuration for USART TC interrupt */
    HAL_NVIC_SetPriority(DTTY_STM32_UART_IRQn, 0, 0);
    HAL_NVIC_EnableIRQ(DTTY_STM32_UART_IRQn);
}

/**
 * @brief UART MSP De-Initialization
 *        This function frees the hardware resources used in this example:
 *          - Disable the Peripheral's clock
 *          - Revert GPIO, DMA and NVIC configuration to their default state
 * @param huart: UART handle pointer
 * @retval None
 */
void HAL_UART_MspDeInit(UART_HandleTypeDef *huart)
{

    static DMA_HandleTypeDef hdma_tx;
    static DMA_HandleTypeDef hdma_rx;

    /*##-1- Reset peripherals ##################################################*/
    DTTY_STM32_UART_FORCE_RESET();
    DTTY_STM32_UART_RELEASE_RESET();

    /*##-2- Disable peripherals and GPIO Clocks #################################*/
    /* Configure UART Tx as alternate function  */
    HAL_GPIO_DeInit(DTTY_STM32_UART_TX_GPIO_PORT, DTTY_STM32_UART_TX_PIN);
    /* Configure UART Rx as alternate function  */
    HAL_GPIO_DeInit(DTTY_STM32_UART_RX_GPIO_PORT, DTTY_STM32_UART_RX_PIN);

    /*##-3- Disable the DMA Streams ############################################*/
    /* De-Initialize the DMA Stream associate to transmission process */
    HAL_DMA_DeInit(&hdma_tx);
    /* De-Initialize the DMA Stream associate to reception process */
    HAL_DMA_DeInit(&hdma_rx);

    /*##-4- Disable the NVIC for DMA ###########################################*/
    HAL_NVIC_DisableIRQ(DTTY_STM32_UART_DMA_TX_IRQn);
    HAL_NVIC_DisableIRQ(DTTY_STM32_UART_DMA_RX_IRQn);
}

#endif /* (UBINOS__BSP__STM32_STM32XXXX == 1) */

#endif /* (INCLUDE__APP__cli_tester == 1) */

