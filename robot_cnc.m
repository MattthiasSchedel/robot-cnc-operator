global global_info
clc;
global_info.CASE = 1;
global_info.STOP_AT = 50;

pns = pnstruct({'robot_cnc_pdf', 'PDF_IMC'});

dynamic.m0 = {'pBefore', 10, 'pCNC1Occupied', 1, 'pCNC2Occupied', 1};
dynamic.ft = {'tCNC1RawToCNC1Finished',5, 'tCNC2RawToCNC2Finished', 6, 'tCNC1FinishedToDeliveryBox', 1, 'tCNC2FinishedToDeliveryBox', 1, 'allothers', 1};

dynamic.re = {'Robot', 1, inf, 'CNC1', 1, inf, 'CNC2', 1, inf};

pni = initialdynamics(pns, dynamic);

sim = gpensim(pni);

plotp(sim, {'pMagazine', 'pCNC1Raw', 'pCNC2Raw',  'pDeliveryBox','pCNC1Finished', 'pCNC2Finished'})
prnss(sim)
occupancy(sim, {'tMagazineToCNC1Raw', 'tMagazineToCNC2Raw', 'tCNC1RawToCNC1Finished', 'tCNC2RawToCNC2Finished', 'tCNC1FinishedToDeliveryBox', 'tCNC2FinishedToDeliveryBox'})
plotGC(sim)
