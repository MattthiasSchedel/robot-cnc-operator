function [fire, transition] = tLoadAGV_pre (transition)

agvId = tokenAny('pAGVIdle',1);
agvColors = get_color('pAGVIdle', agvId);
materialId = tokenArrivedEarly('pAGVPickup',1);
materialColors = get_color('pAGVPickup', materialId);
distance = 0;

switch materialColors{2} % where does the material come from
    case 'warehouse'
        switch materialColors{3} % Where does the material go to
            case 'createPlacticGlass'
                distance = 10; 
            case 'createBottomHalf'
                distance = 20;
            case 'createTopHalf'
                distance = 30;
            case 'createWheels'
                distance = 40;
            otherwise
                fire = 0; return;

        end
    
    otherwise
        fire = 0; return;
end
starting_time = current_time();
transition.new_color = {num2str(distance) , agvColors{1}, agvColors{2}, agvColors{3},... % distance, agv_name, agv_speed, agv battery
                        materialColors{1}, materialColors{3}, num2str(starting_time), num2str(0)}; % material type, material destination, starting_time, traveled distance
transition.override = 1;
transition.selected_tokens = [materialId, agvId];
fire = 1;
