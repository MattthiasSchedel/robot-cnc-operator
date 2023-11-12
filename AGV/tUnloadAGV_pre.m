function [fire, transition] = tUnloadAGV_pre(transition)
    % Pre function for tUnloadAGV transition
    global global_info;
    tokenId = tokenArrivedEarly('pMoving', 1);
    colors = get_color('pMoving', tokenId);
    goalDistance = str2double(colors{1});
    traveledDistance = str2double(colors{8});

    % Get state of battery
    battery = str2double(colors{4});
    startingTime = str2double(colors{7});
    currentTime = current_time();
    deltaTime = (currentTime - startingTime);
    battery = battery - (deltaTime * global_info.batteryConsumptionRate);

    if goalDistance <= traveledDistance
        transition.new_color = {
            colors{2}, colors{3}, num2str(battery), ...
            colors{5}, colors{6}
        }; % agv_name, agv_speed, agv battery, material type, material destination
        transition.override = 1;
        transition.selected_tokens = tokenId;

        fire = 1;
        return;
    else
        fire = 0;
        return;
    end
end
