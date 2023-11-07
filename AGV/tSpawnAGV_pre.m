function [fire, transition] = tSpawnAGV_pre (transition)
global global_info;
global_info.agv_counter = 1+ global_info.agv_counter;
% create 10 new agvs with different names and speeds
agvs = {'agv1', 'agv2', 'agv3', 'agv4', 'agv5', 'agv6', 'agv7', 'agv8', 'agv9', 'agv10'};


avg_speed = 2;
speed_sd = rand;

transition.new_color = {agvs{global_info.agv_counter}, num2str(avg_speed + speed_sd), num2str(100)}; % name, speed, battery

transition.override = 1;
fire = 1;