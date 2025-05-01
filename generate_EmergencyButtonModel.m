
% Auto-generate Emergency Button State Simulink model
modelName = 'EmergencyButtonModel';
open_system(new_system(modelName));

% === INPUT PORTS ===
add_block('simulink/Sources/In1', [modelName '/NO'], 'Position', [50 50 80 70]);
add_block('simulink/Sources/In1', [modelName '/NC'], 'Position', [50 100 80 120]);
add_block('simulink/Sources/In1', [modelName '/N_p'], 'Position', [50 150 80 170]);
add_block('simulink/Sources/In1', [modelName '/reset'], 'Position', [50 200 80 220]);

% === SUBSYSTEM: InputProcessing ===
add_block('simulink/Commonly Used Blocks/Subsystem', [modelName '/InputProcessing'], 'Position', [150 60 300 180]);
add_line(modelName, 'NO/1', 'InputProcessing/1');
add_line(modelName, 'NC/1', 'InputProcessing/2');
add_line(modelName, 'N_p/1', 'InputProcessing/3');

% Inside InputProcessing
inProc = [modelName '/InputProcessing'];
open_system(inProc);

% Create Inports in subsystem
add_block('simulink/Ports & Subsystems/In1', [inProc '/NO'], 'Position', [30 50 60 70]);
add_block('simulink/Ports & Subsystems/In1', [inProc '/NC'], 'Position', [30 90 60 110]);
add_block('simulink/Ports & Subsystems/In1', [inProc '/N_p'], 'Position', [30 130 60 150]);

% Logic to detect button states (simplified placeholder)
add_block('simulink/Commonly Used Blocks/Constant', [inProc '/Pressed'], 'Value', '1', 'Position', [100 60 130 80]);
add_block('simulink/Commonly Used Blocks/Constant', [inProc '/NotPressed'], 'Value', '0', 'Position', [100 100 130 120]);
add_block('simulink/Commonly Used Blocks/Constant', [inProc '/Error'], 'Value', '2', 'Position', [100 140 130 160]);
add_block('simulink/Commonly Used Blocks/Switch', [inProc '/Switch'], 'Position', [160 80 190 120]);
add_block('simulink/Sinks/Out1', [inProc '/ButtonState'], 'Position', [220 100 250 120]);

add_line(inProc, 'Pressed/1', 'Switch/1');
add_line(inProc, 'NotPressed/1', 'Switch/2');
add_line(inProc, 'Error/1', 'Switch/3');
add_line(inProc, 'Switch/1', 'ButtonState/1');

% === CHART BLOCK ===
add_block('simulink/User-Defined Functions/Chart', [modelName '/StateLogic'], 'Position', [350 100 500 200]);
add_line(modelName, 'InputProcessing/1', 'StateLogic/1');
add_line(modelName, 'reset/1', 'StateLogic/2');

% === OUTPUT ===
add_block('simulink/Sinks/Out1', [modelName '/EmergencyStopState'], 'Position', [600 150 630 170]);
add_line(modelName, 'StateLogic/1', 'EmergencyStopState/1');
