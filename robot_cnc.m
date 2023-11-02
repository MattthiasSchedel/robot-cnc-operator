global global_info
clc;
global_info.CASE = 1;
global_info.STOP_AT = 150;

pns = pnstruct({'robot_cnc_pdf', 'PDF_IMC', 'failCheck_module_pdf', 'painting_module_pdf'});

dynamic.m0 = {'pStart', 10, 'pCNC1Occupied', 1, 'pCNC2Occupied', 1, 'pMachineState', 1};
dynamic.ft = {'tCNC1RawToCNC1Finished',5, 'tCNC2RawToCNC2Finished', 6, 'tCNC1FinishedToDeliveryBox', 1, 'tCNC2FinishedToDeliveryBox', 1, 'tPaint', 7, 'tCheckItem', 10, 'allothers', 1};

dynamic.re = {'Robot', 1, inf, 'CNC1', 1, inf, 'CNC2', 1, inf, 'paintMachine', 1, inf, 'agv', 1, inf, 'human', 1, inf};

pni = initialdynamics(pns, dynamic);

sim = gpensim(pni);

plotp(sim, {'pMagazine', 'pCNC1Raw', 'pCNC2Raw',  'pDeliveryBox','pCNC1Finished', 'pCNC2Finished', 'pPaintMagazine', 'pInPainting', 'pOutPainting', 'pDelivery', 'pAfterCheck', 'pFailedItems','pFinal'})
prnss(sim)
occupancy(sim, {'tMagazineToCNC1Raw', 'tMagazineToCNC2Raw', 'tCNC1RawToCNC1Finished', 'tCNC2RawToCNC2Finished', 'tCNC1FinishedToDeliveryBox', 'tCNC2FinishedToDeliveryBox', 'tPaint'})
prncolormap(sim)
plotGC(sim)
