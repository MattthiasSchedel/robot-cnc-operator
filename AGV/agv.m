clear all; clc

global global_info

global_info.CASE = 1;
global_info.STOP_AT = 400;
global_info.agv_counter = 0;
global_info.counter = 0;
global_info.agvIndex = 1;
global_info.chargingIndex = 1;

pns = pnstruct({'agv_pdf', 'charging_module_pdf','warehouse_pdf', 'combiner_pdf', 'robot_cnc_pdf', 'createPlasticGlass_module_pdf', 'createWheels_module_pdf', 'bottomHalf_module_pdf', 'failCheck_module_pdf','painting_module_pdf', 'PDF_IMC'});

dynamic.m0 = {'pMaterials', 100, 'pAGVGarage', 10, 'pCharginStationsGenerator', 5, 'pOccupied1', 1, 'pOccupied2', 1, 'pCNC1Occupied', 1, 'pCNC2Occupied', 1,  'pMachineState', 1, 'pMachineStateWheels', 1, 'pMachineStateGlass', 1, 'pMachineStateBottom', 1};
dynamic.ft = {'tPopulateWarehouse', 1/50, 'tMove', 1/20,'tChargingStation1', 5, 'tChargingStation2', 5, 'tChargingStation3', 5, 'tChargingStation4', 4, 'tChargingStation5', 7, 'tRaw1ToFinished1',5, 'tRaw2ToFinished2', 6, 'allothers', 1};
dynamic.ip = {'tUnloadAGV', 1, 'tAGVToCharging', 1, 'tFinishedCharging', 1};

% dynamic.re = {'Combiner_Worker', 1, inf, 'CombinerMachine1', 1, inf, 'CombinerMachine2', 1, inf};
dynamic.re = {'Combiner_Worker', 1, inf, 'CombinerMachine1', 1, inf, 'CombinerMachine2', 1, inf, 'Robot', 1, inf, 'CNC1', 1, inf, 'CNC2', 1, inf, 'paintMachine', 1, inf, 'agv', 1, inf, 'human', 1, inf, 'glassCreator', 1, inf, 'wheelsCreater', 1, inf, 'moldMachine', 1, inf};


pni = initialdynamics(pns, dynamic);

sim = gpensim(pni);

plotp(sim, {'pAfterMat', 'pCurrentlyCharging' ...
        'pBeforeCharging', 'pAGVIdle', 'pAss', 'pFailedItems', 'pAfterCheck'})
% prnss(sim)
occupancy(sim, {'tChargingStation1', 'tChargingStation2','tChargingStation3', 'tChargingStation4','tChargingStation5'})
plotGC(sim)
prnfinalcolors(sim);