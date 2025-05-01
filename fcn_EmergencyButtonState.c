/*
 * File: fcn_EmergencyButtonState.c
 *
 * Code generated for Simulink model 'Magni_RTH625_BaseSW0'.
 *
 * Model version                  : 1.759
 * Simulink Coder version         : 9.8 (R2022b) 13-May-2022
 * C/C++ source code generated on : Wed May  3 16:11:54 2023
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->TMS570 Cortex-R4
 * Code generation objectives:
 *    1. Execution efficiency
 *    2. ROM efficiency
 *    3. RAM efficiency
 *    4. Traceability
 *    5. Safety precaution
 *    6. Debugging
 *    7. MISRA C:2012 guidelines
 * Validation result: Not run
 */

#include "rtwtypes.h"
#include "fcn_EmergencyButtonState.h"
#include "Magni_RTH625_BaseSW0_private.h"

/* Named constants for Chart: ''Chart' (':24154')' */
#define Magni_RTH625_B_IN_Initial_state ((uint8_T)1U)
#define Magni_RTH625_Bas_IN_Reset_state ((uint8_T)2U)
#define Magni_RTH625_BaseSW0_IN_state1 ((uint8_T)3U)
#define Magni_RTH625_BaseSW0_IN_state2 ((uint8_T)4U)
#define Magni_RTH6_IN_NO_ACTIVE_CHILD_f ((uint8_T)0U)

/* System initialize for atomic system: 'fcn_EmergencyButtonState' (':12319') */
void M_fcn_EmergencyButtonState_Init(uint8_T *rty_FL_u8VS_EmergencyStopState,
  DW_fcn_EmergencyButtonState_M_T *localDW)
{
  /* SystemInitialize for Chart: 'Chart' (':24154') */
  localDW->is_active_c11_Magni_RTH625_Base = 0U;
  localDW->is_c11_Magni_RTH625_BaseSW0 = Magni_RTH6_IN_NO_ACTIVE_CHILD_f;
  localDW->In_prv = 0U;
  *rty_FL_u8VS_EmergencyStopState = 0U;
}

/* Output and update for atomic system: 'fcn_EmergencyButtonState' (':12319') */
uint8_T Magni__fcn_EmergencyButtonState(boolean_T rtu_IP_boVS_EmergencySwitch_NO_, boolean_T
  rtu_IP_boVS_EmergencySwitch_NC_, boolean_T rtu_IP_boVS_EmergencySwitch_N_p, boolean_T rtu_reset,
  DW_fcn_EmergencyButtonState_M_T *localDW, P_fcn_EmergencyButtonState_Ma_T *localP)
{
  uint8_T rty_FL_u8VS_EmergencyStopStat_0;

  /* Switch: 'Switch1' (':24159') incorporates:
   *  Constant: 'Error' (':24155')
   *  Constant: 'NotPressed' (':24156')
   *  Logic: 'AND1' (':24150')
   *  Logic: 'AND3' (':24151')
   *  Logic: 'AND4' (':24152')
   *  Logic: 'AND5' (':24153')
   *  Switch: 'Switch' (':24158')
   */
  if ((!rtu_IP_boVS_EmergencySwitch_NO_) && (rtu_IP_boVS_EmergencySwitch_NC_ &&
       rtu_IP_boVS_EmergencySwitch_N_p)) {
    rty_FL_u8VS_EmergencyStopStat_0 = localP->NotPressed_Value;
  } else if (rtu_IP_boVS_EmergencySwitch_NO_ && ((!rtu_IP_boVS_EmergencySwitch_NC_) &&
              (!rtu_IP_boVS_EmergencySwitch_N_p))) {
    /* Switch: 'Switch' (':24158') incorporates:
     *  Constant: 'Pressed' (':24157')
     */
    rty_FL_u8VS_EmergencyStopStat_0 = localP->Pressed_Value;
  } else {
    rty_FL_u8VS_EmergencyStopStat_0 = localP->Error_Value;
  }

  /* End of Switch: 'Switch1' (':24159') */

  /* Chart: 'Chart' (':24154') */
  if (localDW->is_active_c11_Magni_RTH625_Base == 0U) {
    localDW->is_active_c11_Magni_RTH625_Base = 1U;
    localDW->is_c11_Magni_RTH625_BaseSW0 = Magni_RTH625_B_IN_Initial_state;
  } else {
    switch (localDW->is_c11_Magni_RTH625_BaseSW0) {
     case Magni_RTH625_B_IN_Initial_state:
      if (rty_FL_u8VS_EmergencyStopStat_0 > 0) {
        localDW->is_c11_Magni_RTH625_BaseSW0 = Magni_RTH625_BaseSW0_IN_state1;
        localDW->In_prv = rty_FL_u8VS_EmergencyStopStat_0;
      } else {
        rty_FL_u8VS_EmergencyStopStat_0 = 0U;
      }
      break;

     case Magni_RTH625_Bas_IN_Reset_state:
      if (!rtu_reset) {
        localDW->is_c11_Magni_RTH625_BaseSW0 = Magni_RTH625_B_IN_Initial_state;
      } else {
        rty_FL_u8VS_EmergencyStopStat_0 = 0U;
      }
      break;

     case Magni_RTH625_BaseSW0_IN_state1:
      if (rty_FL_u8VS_EmergencyStopStat_0 == 0) {
        localDW->is_c11_Magni_RTH625_BaseSW0 = Magni_RTH625_BaseSW0_IN_state2;
        rty_FL_u8VS_EmergencyStopStat_0 = localDW->In_prv;
      } else {
        localDW->In_prv = rty_FL_u8VS_EmergencyStopStat_0;
      }
      break;

     default:
      /* case IN_state2: */
      if (rtu_reset) {
        localDW->is_c11_Magni_RTH625_BaseSW0 = Magni_RTH625_Bas_IN_Reset_state;
        rty_FL_u8VS_EmergencyStopStat_0 = 0U;
      } else {
        rty_FL_u8VS_EmergencyStopStat_0 = localDW->In_prv;
      }
      break;
    }
  }

  /* End of Chart: 'Chart' (':24154') */
  return rty_FL_u8VS_EmergencyStopStat_0;
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
