function [fire, transition] = tSpawnAGV_pre(transition)
    % Pre function for tSpawnAGV transition

    global global_info;
    global_info.agv_counter = global_info.agv_counter + 1;

    avgSpeed = 2;
    speedSd = rand;

    agvName = ['agv', num2str(global_info.agv_counter)]; % Dynamically create AGV name

    transition.new_color = {
        agvName, ...
        num2str(avgSpeed + speedSd), ...
        num2str(100)
    }; % name, speed, battery

    transition.override = 1;
    fire = 1;
end
