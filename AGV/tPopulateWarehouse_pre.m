% FILEPATH: /Users/matthiasschedel/Documents/MATLAB/robot-cnc-operator/AGV/tPopulateWarehouse_pre.m
function [fire, transition] = tPopulateWarehouse_pre(transition)
    global global_info;
    materials = {'Plastic', 'ToyCarMaterial', 'Rubber', 'Metal'};

    index = mod(global_info.counter, 4) + 1;
    global_info.counter = global_info.counter + 1;

    transition.new_color = {materials{index}};
    transition.override = 1;
    fire = 1;
end
