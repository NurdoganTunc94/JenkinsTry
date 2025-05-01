/*
 * File: fcn_EmergencyButtonState.h
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

#ifndef RTW_HEADER_fcn_EmergencyButtonState_h_
#define RTW_HEADER_fcn_EmergencyButtonState_h_
#ifndef Magni_RTH625_BaseSW0_COMMON_INCLUDES_
#define Magni_RTH625_BaseSW0_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* Magni_RTH625_BaseSW0_COMMON_INCLUDES_ */

#include "Magni_RTH625_BaseSW0_types.h"

/* Block states (default storage) for system 'fcn_EmergencyButtonState' (':12319') */
typedef struct {
  uint8_T is_c11_Magni_RTH625_BaseSW0; /* 'Chart' (':24154') */
  uint8_T In_prv;                      /* 'Chart' (':24154') */
  uint8_T is_active_c11_Magni_RTH625_Base;/* 'Chart' (':24154') */
} DW_fcn_EmergencyButtonState_M_T;

/* Parameters for system: 'fcn_EmergencyButtonState' (':12319') */
struct P_fcn_EmergencyButtonState_Ma_T_ {
  uint8_T NotPressed_Value;            /* Computed Parameter: NotPressed_Value
                                        * Referenced by: 'NotPressed' (':24156')
                                        */
  uint8_T Pressed_Value;               /* Computed Parameter: Pressed_Value
                                        * Referenced by: 'Pressed' (':24157')
                                        */
  uint8_T Error_Value;                 /* Computed Parameter: Error_Value
                                        * Referenced by: 'Error' (':24155')
                                        */
};

extern void M_fcn_EmergencyButtonState_Init(uint8_T *rty_FL_u8VS_EmergencyStopState,
  DW_fcn_EmergencyButtonState_M_T *localDW);
extern uint8_T Magni__fcn_EmergencyButtonState(boolean_T rtu_IP_boVS_EmergencySwitch_NO_, boolean_T
  rtu_IP_boVS_EmergencySwitch_NC_, boolean_T rtu_IP_boVS_EmergencySwitch_N_p, boolean_T rtu_reset,
  DW_fcn_EmergencyButtonState_M_T *localDW, P_fcn_EmergencyButtonState_Ma_T *localP);

#endif                                 /* RTW_HEADER_fcn_EmergencyButtonState_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
