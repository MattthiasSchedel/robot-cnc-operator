function [fire, transition] = tPopulateWarehouse_pre (transition)
global global_info;
materials = {'Plastic', 'ToyCarMaterial', 'Rubber'}

global_info.counter = 1+ mod(global_info.counter + 1, 3);
switch global_info.counter 
    case {1}
        transition.new_color = materials{1};
    case {2}
        transition.new_color = materials{2};
    case {3}    
        transition.new_color = materials{3};
    otherwise
        fire = 0;
        return;

end
transition.override = 1;
fire = 1;

