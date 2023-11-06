global global_info;
clc;
global_info.counter = 1;
global_info.STOP_AT = 50;

pns = pnstruct({'warehouse_pdf', 'PDF_IMC'});

dynamic.m0 = {'pMaterials', 50};
dynamic.ft = {'tPopulateWarehouse',1/50,'allothers', 1};

% dynamic.re = {'Combiner_Worker', 1, inf, 'CombinerMachine1', 1, inf, 'CombinerMachine2', 1, inf};

pni = initialdynamics(pns, dynamic);

sim = gpensim(pni);

plotp(sim, {'pMaterials', 'pWarehouse', 'pAfter'})
prnss(sim)
occupancy(sim, {'tPopulateWarehouse'})
plotGC(sim)
prnfinalcolors(sim)