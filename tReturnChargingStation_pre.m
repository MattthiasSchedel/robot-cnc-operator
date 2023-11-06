function [fire, transition] = tReturnChargingStation_pre (transition)

tokID = tokenAnyColor('pStationBecomeAvailabe',1, {'ChargingStation1' , 'ChargingStation2', 'ChargingStation3', 'ChargingStation4', 'ChargingStation5'});
if tokID
    colors = get_color('pStationBecomeAvailabe', tokID);

    chargingStation = colors{3};

    transition.new_color = chargingStation;
    transition.override = 1;

    fire = tokID;
else
    fire = 0;
end