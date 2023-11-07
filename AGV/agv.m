global global_info
clc;
global_info.CASE = 1;
global_info.STOP_AT = 200;
global_info.agv_counter = 0;
global_info.counter = 0;

pns = pnstruct({'agv_pdf','warehouse_pdf', 'PDF_IMC'});

dynamic.m0 = {'pMaterials', 100, 'pAGVGarage', 10};
dynamic.ft = {'tPopulateWarehouse', 1/50, 'tMove', 1/20,'allothers', 1};
dynamic.ip = {'tUnloadAGV', 1, 'tAGVToCharging', 1};

% dynamic.re = {'Combiner_Worker', 1, inf, 'CombinerMachine1', 1, inf, 'CombinerMachine2', 1, inf};

pni = initialdynamics(pns, dynamic);

sim = gpensim(pni);

plotp(sim, {'pAfterMat', 'pAGVPickup', 'pMoving', 'pAGVDropoff' ...
        'pUnloadedAGV', 'pAGVIdle', 'pBeforeCharging'})
% prnss(sim)
% occupancy(sim, {'tMove', 'tUnloadAGV'})
plotGC(sim)
prnfinalcolors(sim);