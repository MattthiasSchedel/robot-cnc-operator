clear all; clc;

global global_info
global_info.CASE = 1;
global_info.STOP_AT = 150;
global_info.agvIndex = 1;
global_info.chargingIndex = 1;

pns = pnstruct({'robot_cnc_pdf', 'PDF_IMC', 'failCheck_module_pdf', 'painting_module_pdf', 'bottomHalf_module_pdf', 'createPlasticGlass_module_pdf', 'createWheels_module_pdf', 'charging_module_pdf'});

dynamic.m0 = {'pBeforeTravel', 8, 'pCNC1Occupied', 1, 'pCNC2Occupied', 1, 'pMachineState', 1, 'pMachineStateWheels', 1, 'pMachineStateGlass', 1, 'pMachineStateBottom', 1, 'pCharginStationsGenerator', 5};
dynamic.ft = {'tCNC1RawToCNC1Finished',5, 'tCNC2RawToCNC2Finished', 6, 'tCNC1FinishedToDeliveryBox', 1, 'tCNC2FinishedToDeliveryBox', 1, 'tPaint', 7, 'tCheckItem', 10, 'tCreateWheels', 15, 'tCreateGlass', 20, 'tMold', 17, 'tChargingStation1', 5, 'tChargingStation2', 5, 'tChargingStation3', 5, 'tChargingStation4', 4, 'tChargingStation5', 7, 'allothers', 1};

dynamic.re = {'Robot', 1, inf, 'CNC1', 1, inf, 'CNC2', 1, inf, 'paintMachine', 1, inf, 'agv', 1, inf, 'human', 1, inf, 'glassCreator', 1, inf, 'wheelsCreater', 1, inf, 'moldMachine', 1, inf};

pni = initialdynamics(pns, dynamic);

sim = gpensim(pni);

plotp(sim, {'pMagazine', 'pCNC1Raw', 'pCNC2Raw',  'pDeliveryBox','pCNC1Finished', 'pCNC2Finished', 'pPaintMagazine', 'pInPainting', 'pOutPainting', 'pDelivery', 'pAfterCheck', 'pFailedItems','pQueueForCharge', 'pCurrentlyCharging', 'pAvailableChargingStations', 'pChargingFinished', 'pFinished'})
prnss(sim)
occupancy(sim, {'tMagazineToCNC1Raw', 'tMagazineToCNC2Raw', 'tCNC1RawToCNC1Finished', 'tCNC2RawToCNC2Finished', 'tCNC1FinishedToDeliveryBox', 'tCNC2FinishedToDeliveryBox', 'tPaint'})
prncolormap(sim)
plotGC(sim)
