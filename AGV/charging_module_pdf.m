function [png] = charging_module_pdf()

png.PN_name = 'Charging module';

png.set_of_Ps = {'pQueueForCharge', 'pCurrentlyCharging', 'pAvailableChargingStations', 'pCharginStationsGenerator', 'pChargingFinished', 'pStationBecomeAvailabe'};

png.set_of_Ts = {'tINChargingModule', 'tAssignChargingStation', 'tChargingStation1',...
                'tChargingStation2', 'tChargingStation3', 'tChargingStation4',...
                'tChargingStation5', 'tGiveChargingStationName', 'tFinishedCharging', 'tReturnChargingStation', 'tOUTChargingModule'};

png.set_of_As = {'tINChargingModule', 'pQueueForCharge', 1, 'pQueueForCharge', 'tAssignChargingStation', 1, ...
                'tAssignChargingStation', 'pCurrentlyCharging', 1, 'pCurrentlyCharging', 'tFinishedCharging', 1, ...
                'pCurrentlyCharging', 'tChargingStation1', 1, 'tChargingStation1', 'pCurrentlyCharging', 1, ...
                'pCurrentlyCharging', 'tChargingStation2', 1, 'tChargingStation2', 'pCurrentlyCharging', 1, ...
                'pCurrentlyCharging', 'tChargingStation3', 1, 'tChargingStation3', 'pCurrentlyCharging', 1, ...
                'pCurrentlyCharging', 'tChargingStation4', 1, 'tChargingStation4', 'pCurrentlyCharging', 1, ...
                'pCurrentlyCharging', 'tChargingStation5', 1, 'tChargingStation5', 'pCurrentlyCharging', 1, ...
                'tFinishedCharging', 'pChargingFinished', 1, 'tFinishedCharging', 'pStationBecomeAvailabe', 1,...
                'pChargingFinished', 'tOUTChargingModule', 1, ...
                'pStationBecomeAvailabe', 'tReturnChargingStation', 1, 'tReturnChargingStation', 'pAvailableChargingStations', 1, ...
                'pAvailableChargingStations', 'tAssignChargingStation', 1, 'pCharginStationsGenerator', 'tGiveChargingStationName', 1, ...
                'tGiveChargingStationName', 'pAvailableChargingStations', 1};

png.set_of_Ports = {'tINChargingModule', 'tOUTChargingModule'};