function [fire, transition] = tGiveChargingStationName_pre (transition)
global global_info

index  = global_info.chargingIndex;

defaultString = 'ChargingStation';
stringNumber = num2str(index);

newcolor = strcat(defaultString, stringNumber);

transition.new_color = newcolor;
transition.override = 1;

global_info.chargingIndex = global_info.chargingIndex + 1;

fire = 1;