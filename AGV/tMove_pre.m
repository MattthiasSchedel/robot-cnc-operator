function [fire, transition] = tMove_pre (transition)
tokenId = tokenArrivedEarly('pMoving',1);

colors = get_color('pMoving', tokenId);

speed = str2num(colors{3});
starting_time = str2num(colors{7});
time = current_time();
delta_time = (time - starting_time);
travaled_distance = speed * delta_time;

battery = str2num(colors{4});
battery = battery - (delta_time * 0.01);

if battery < 0
    fire = 0; return;
end

transition.new_color = {colors{1}, colors{2}, colors{3}, colors{4},... % distance, agv_name, agv_speed, agv battery
 colors{5}, colors{6}, colors{7} num2str(travaled_distance)}; % material type, material destination, starting_time, traveled distance
transition.override = 1;
transition.selected_tokens = tokenId;
fire = 1;
end