function [fire, transition] = tAGVToCharging_pre (transition)
    tokenId = tokenArrivedEarly('pUnloadedAGV',1);
    colors = get_color('pUnloadedAGV', tokenId);

    battery = str2num(colors{3});
    if battery < 20
        transition.new_color = {colors{1}, colors{2}, colors{3}}; % name, speed, battery
        transition.override = 1;
        transition.selected_tokens = tokenId;
        fire = 1; return;
    else
        fire = 0; return;
    end

