function [fire, transition] = tChargingStation3_pre (transition)

tokID = tokenAnyColor('pCurrentlyCharging',1, {'ChargingStation3'});
if tokID
    colors = get_color('pCurrentlyCharging', tokID);

    for i = 1:numel(colors)        
        elementi = colors{i}
        if not(isempty(str2num(elementi)))
            chargingProcent = str2num(elementi)
        elseif strcmp(elementi(1:3), 'AGV')
            agvName = elementi
        else
            chargingStation = elementi
        end
    end

    %{
    chargingProcent = str2num(colors{1});
    chargingStation = colors{3};
    agvName = colors{2};
    %}

    chargingProcent = chargingProcent + 20;

    if chargingProcent >= 100
        chargingProcent = 100;
    end

    transition.new_color = {num2str(chargingProcent), agvName, chargingStation};
    transition.override = 1;
    transition.selected_tokens = tokID;

    fire = tokID;
else
    fire = 0;
end