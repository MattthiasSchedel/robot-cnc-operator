function [fire, transition] = tChargingStation3_pre (transition)

tokID = tokenAnyColor('pCurrentlyCharging',1, {'ChargingStation3'});
if tokID
    colors = get_color('pCurrentlyCharging', tokID);
    chargingProcent = str2num(colors{1});

    %{
    chargingProcent = str2num(colors{1});
    chargingStation = colors{3};
    agvName = colors{2};
    %}
    
    chargingProcent = chargingProcent + 20;

    if chargingProcent >= 100
        chargingProcent = 100;
    end
    transition.new_color = {num2str(chargingProcent), colors{2}, colors{3}, colors{4}};
    transition.override = 1;
    transition.selected_tokens = tokID;

    fire = tokID;
else
    fire = 0;
end