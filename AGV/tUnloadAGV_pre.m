function [fire, transition] = tUnloadAGV_pre (transition)
tokenId = tokenArrivedEarly('pMoving',1);

colors = get_color('pMoving', tokenId);
goal_distance = str2num(colors{1});
travaled_distance = str2num(colors{8});

% get state of battery
battery = str2num(colors{4});
starting_time = str2num(colors{7});
time = current_time();
delta_time = (time - starting_time);
battery = battery - (delta_time * 1);

if goal_distance <= travaled_distance
    transition.new_color = {colors{2}, colors{3}, num2str(battery),... % agv_name, agv_speed, agv battery
                            colors{5}, colors{6}}; % material type, material destination,
    transition.override = 1;
    transition.selected_tokens = tokenId;

    fire = 1; return;
else
    fire = 0; return;
end