function [fire, transition] = tOUTChargingModule_pre (transition)

tokID = tokenAny('pChargingFinished', 1);
if tokID
    colors = get_color('pChargingFinished', tokID);

    batteryStatus = colors{1};
    agvName = colors{2};

    transition.new_color = {batteryStatus, agvName};
    transition.override = 1;

    fire = tokID;
else
    fire = 0;
end