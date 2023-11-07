function [fire, transition] = tINChargingModule_pre (transition)

tokenId = tokenArrivedEarly('pBeforeCharging',1);
colors = get_color('pBeforeCharging', tokenId);

transition.new_color = {colors{3},colors{1}, colors{2}}; % battery status, agv name, speed

transition.override = 1;
transition.selected_tokens = tokenId;
fire = tokenId;
