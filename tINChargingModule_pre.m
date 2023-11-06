function [fire, transition] = tINChargingModule_pre (transition)

%tokID = tokenAnyColor('',1, {'ChargingStation1'});
tokID = 0;
if tokID
    colors = get_color('', 1, {'20'});
    batteryStatus = colors{1};
    agvName = colors{2}


    transition.new_color = {batteryStatus, agvName};
    transition.selected_tokens = tokID
    fire = tokID;
else
    fire = 0;
end