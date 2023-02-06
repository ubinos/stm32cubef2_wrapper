#include <ubinos.h>

#if (UBINOS__BSP__BOARD_MODEL == UBINOS__BSP__BOARD_MODEL__NUCLEOF207ZG)
#if (UBINOS__BSP__BOARD_VARIATION__NUCLEOF207ZG == 1)

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f2xx_it.h"

/**
  * @brief  This function handles TIMx_INSTANCE Interrupt.
  * @param  None
  * @retval None
  */
void TIM3_IRQHandler(void)
{
  HAL_TIM_IRQHandler(&TimHandle);

}

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

#endif /* (UBINOS__BSP__BOARD_VARIATION__NUCLEOF207ZG == 1) */
#endif /* (UBINOS__BSP__BOARD_MODEL == UBINOS__BSP__BOARD_MODEL__NUCLEOF207ZG) */

