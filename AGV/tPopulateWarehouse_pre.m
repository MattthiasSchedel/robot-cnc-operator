function [fire, transition] = tPopulateWarehouse_pre (transition)
global global_info;
materials = {'Plastic', 'ToyCarMaterial', 'Rubber', 'Metal'};


index = mod(global_info.counter, 4) + 1;
global_info.counter = global_info.counter + 1;
% display(index);
% switch index
%     case {1}
%         transition.new_color = materials{1};
%     case {2}
%         transition.new_color = materials{2};
%     case {3}    
%         transition.new_color = materials{3};
%     case {4}
%         transition.new_color = materials{4};

%     otherwise
%         fire = 0;
%         return;

% end
transition.new_color = {materials{index}};
% transition.new_color = num2str(index);
% transition.new_color = materials{global_info.counter};
transition.override = 1;
fire = 1;

