global global_info
clc;
global_info.CASE = 1;
global_info.STOP_AT = 400;
global_info.agv_counter = 0;
global_info.counter = 0;
global_info.agvIndex = 1;
global_info.chargingIndex = 1;

pns = pnstruct({'agv_pdf', 'charging_module_pdf','warehouse_pdf', 'PDF_IMC'});

dynamic.m0 = {'pMaterials', 100, 'pAGVGarage', 10, 'pCharginStationsGenerator', 5};
dynamic.ft = {'tPopulateWarehouse', 1/50, 'tMove', 1/20,'tChargingStation1', 5, 'tChargingStation2', 5, 'tChargingStation3', 5, 'tChargingStation4', 4, 'tChargingStation5', 7, 'allothers', 1};
dynamic.ip = {'tUnloadAGV', 1, 'tAGVToCharging', 1, 'tFinishedCharging', 1};

% dynamic.re = {'Combiner_Worker', 1, inf, 'CombinerMachine1', 1, inf, 'CombinerMachine2', 1, inf};

pni = initialdynamics(pns, dynamic);

sim = gpensim(pni);

plotp(sim, {'pAfterMat', 'pCurrentlyCharging' ...
        'pBeforeCharging', 'pAGVIdle'})
% prnss(sim)
occupancy(sim, {'tChargingStation1', 'tChargingStation2','tChargingStation3', 'tChargingStation4','tChargingStation5'})
plotGC(sim)
prnfinalcolors(sim);