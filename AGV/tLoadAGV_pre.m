function [fire, transition] = tLoadAGV_pre(transition)
    % Pre function for tLoadAGV transition

    agvId = tokenAny('pAGVIdle', 1);
    agvColors = get_color('pAGVIdle', agvId);
    materialId = tokenArrivedEarly('pAGVPickup', 1);
    materialColors = get_color('pAGVPickup', materialId);
    distance = 0;

    % Determine distance based on material source and destination
    switch materialColors{2} % Source of the material
        case 'warehouse'
            distance = determineDistance(materialColors{3}, ...
                {'createPlacticGlass', 'createBottomHalf', 'createTopHalf', 'createWheels'}, ...
                [10, 20, 30, 40]);
        case 'createPlacticGlass'
            distance = determineDistance(materialColors{3}, {'combiner'}, [14]);
        case 'createBottomHalf'
            distance = determineDistance(materialColors{3}, {'combiner'}, [17]);
        case 'createTopHalf'
            distance = determineDistance(materialColors{3}, {'combiner'}, [22]);
        case 'createWheels'
            distance = determineDistance(materialColors{3}, {'combiner'}, [25]);
        case 'combiner'
            distance = determineDistance(materialColors{3}, {'painter'}, [4]);
        case 'painter'
            distance = determineDistance(materialColors{3}, {'failcheck'}, [5]);
        otherwise
            fire = 0;
            return;
    end

    % Set the new color and token selection for the transition
    startingTime = current_time();
    transition.new_color = {
        num2str(distance), agvColors{1}, agvColors{2}, agvColors{3}, ...
        materialColors{1}, materialColors{3}, num2str(startingTime), num2str(0)
    }; % distance, agv_name, agv_speed, agv battery, material type, material destination, starting_time, traveled distance
    transition.override = 1;
    transition.selected_tokens = [materialId, agvId];
    fire = 1;
end

function distance = determineDistance(destination, destinations, distances)
    % Helper function to determine distance based on destination
    distance = 0;
    index = find(strcmp(destinations, destination));
    if ~isempty(index)
        distance = distances(index);
    else
        fire = 0;
        error('Invalid destination');
    end
end
