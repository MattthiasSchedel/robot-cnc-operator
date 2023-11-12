function [fire, transition] = tMove_pre(transition)
    % Pre function for tMove transition
    global global_info;
    tokenId = tokenArrivedEarly('pMoving', 1);
    colors = get_color('pMoving', tokenId);

    speed = str2double(colors{3});
    startingTime = str2double(colors{7});
    currentTime = current_time();
    deltaTime = (currentTime - startingTime);
    traveledDistance = speed * deltaTime;

    battery = str2double(colors{4});
    battery = battery - (deltaTime * global_info.batteryConsumptionRate);

    if battery <= 0
        fire = 0;
        return;
    end

    transition.new_color = {
        colors{1}, colors{2}, colors{3}, colors{4}, ...
        colors{5}, colors{6}, colors{7}, num2str(traveledDistance)
    }; % distance, agv_name, agv_speed, agv battery, material type, material destination, starting_time, traveled distance
    transition.override = 1;
    transition.selected_tokens = tokenId;
    fire = 1;
end
