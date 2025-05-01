%Ignition
IP_boInitValue = false;
IP_boActValue = true;
IP_boDeactValue = false;
IP_s_UB = 22000;
IP_s_LB = 18000;

%% Emergency Button NC (connected to ground)
IP_sEM_UB = 8000;
IP_sEM_LB = 2000;
%% HVIL
IP_sHVIL_UB = 15000;
IP_sHVIL_LB = 12000;

OP_boHVIL_Supply = boolean(1);

%% Feedback Contactors
IP_sFB_UB = 10000;
IP_sFB_LB = 5000;


%% Cabin Alarm
FL_u8HMI_BuzzerTimer = uint8(3);

%% Batt1 ChargeCurrentMax
IP_sBatt1_ChargeCurrentMax_Factor = single(0.1);
IP_sBatt1_ChargeCurrentMax_Offset = single(0);
IP_sBatt1_ChargeCurrentMax_LB = single(0);
IP_sBatt1_ChargeCurrentMax_UB = single(6553.5);

%% Batt1 DisChargeCurrentMax
IP_sBatt1_DisChargeCurrentMax_Factor = single(0.1);
IP_sBatt1_DisChargeCurrentMax_Offset = single(0);
IP_sBatt1_DisChargeCurrentMax_LB = single(0);
IP_sBatt1_DisChargeCurrentMax_UB = single(6553.5);

%% Batt1 VoltageAtSensor
IP_sBatt1_VoltageAtSensor_Factor = single(0.02);
IP_sBatt1_VoltageAtSensor_Offset = single(0);
IP_sBatt1_VoltageAtSensor_LB = single(0);
IP_sBatt1_VoltageAtSensor_UB = single(1310.7);

%% Batt1_Current
IP_sBatt1_Current_Factor = single(0.1);
IP_sBatt1_Current_Offset = single(0);
IP_sBatt1_Current_LB = single(-3276.8);
IP_sBatt1_Current_UB = single(3276.8); 

%% Batt1_InsulationResistance
IP_sBatt1_InsulationResistance_Factor = single(5);
IP_sBatt1_InsulationResistance_Offset = single(0);
IP_sBatt1_InsulationResistance_LB = single(0);
IP_sBatt1_InsulationResistance_UB = single(0);

%% Batt1 SOC
IP_sBatt1_SOC_Factor = single(1);
IP_sBatt1_SOC_Offset = single(0);
IP_sBatt1_SOC_LB = single(0);
IP_sBatt1_SOC_UB = single(100);

%% Batt1 SOH
IP_sBatt1_SOH_Factor = single(1);
IP_sBatt1_SOH_Offset = single(0);
IP_sBatt1_SOH_LB = single(0);
IP_sBatt1_SOH_UB = single(100);

%% Batt1 UserRi
IP_sBatt1_UserRi_Factor = single(1);
IP_sBatt1_UserRi_Offset = single(0);
IP_sBatt1_UserRi_LB = single(0);
IP_sBatt1_UserRi_UB = single(255);

%% Batt1 Ubatt
IP_sBatt1_Ubatt_Factor = single(0.1);
IP_sBatt1_Ubatt_Offset = single(0);
IP_sBatt1_Ubatt_LB = single(0);
IP_sBatt1_Ubatt_UB = single(6553.5);

%% Load Voltage
IP_sLoad_Voltage_Factor = single(1);
IP_sLoad_Voltage_Offset = single(0);
IP_sLoad_Voltage_LB = single(0);
IP_sLoad_Voltage_UB = single(65535);

%% FLOW LOGIC
%% Safe to Close HV
SafeCurrentToCloseHV_A = single(5);
SafeVoltageToCloseHV_V = single(0.5);

MainHV_StatusDelay = single(5);
MainHV_Minus_In_Delay = single(5);
BattBox1_No = single(1);
BattBox2_No = single(2);
BattBox3_No = single(3);
VoltageSensorAvailableBB1 = boolean(0);
VoltageSensorAvailableBB2 = boolean(0);
VoltageSensorAvailableBB3 = boolean(0);
NotAvailable_uint16 = single(65535);
NotAvailable_uint8 = uint8(255);

%% Delay DC HV
DCHV_Minus_In_Delay_ms = single(500);


%% VoltageDetermination
Voltage_NA_UB = uint16(65535);

IP_sBatt1_LiBa_IntResist_mOhm = single(25);
IP_sBatt2_LiBa_IntResist_mOhm = single(25);
IP_sBatt3_LiBa_IntResist_mOhm = single(25);

IT_sInsulationSafeValue_kOhm = single(650);
FL_sHVC_CellBalanceVoltage_mV = single(3500);
UnexpectedBattChargingFcn_Available = boolean(1);

CurrentReductionConstant_Lvl3 = single(0.1);
CurrentReductionConstant_Lvl2 = single(0.07);
CurrentReductionConstant_Lvl1 = single(0.05);
CurrentReductionConstant_Lvl0 = single(0.03);

FL_sInrushCurrent_dividebyzero = single(0.00001);

CurrentLB = single(-3);
CurrentUB = single(3);
%% BMS select
BMS_Select = uint8(2); % 1-Actia, 2-Lithium Balance

IP_u8HW_IN_delay_ms = uint8(100);
IP_u8HVIL_Delay_ms = uint8(100);

%% IMD Delay

IT_u8IMD_DelayTime_s = uint8(20);
