function [fire, transition] = tAssignChargingStation_pre (transition)
agvId = tokenAny('pQueueForCharge',1);
agvColors = get_color('pQueueForCharge', agvId);

chargerId = tokenAny('pAvailableChargingStations', 1);
chargerColors = get_color('pAvailableChargingStations', chargerId);

transition.new_color = {agvColors{1}, agvColors{2}, agvColors{3}, chargerColors{1}}; % battery, agv name, agv speed, charger name

transition.override = 1;
transition.selected_tokens = [agvId, chargerId];
fire = 1;
