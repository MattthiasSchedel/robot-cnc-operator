function [fire, transition] = tWarehouseOut_pre (transition)
    % Add a destination to the token so that the AGV knows where to go. 
    % tokenId = tokenAny('pWarehouse',1);
    tokenId = tokenArrivedEarly('pWarehouse',1);
    colors = get_color('pWarehouse',tokenId);
    material = colors{1};
    % display(tokenId);
    switch material
        case 'Plastic'
            transition.new_color = {'Plastic','warehouse', 'createPlacticGlass'}; % type, location, destination

        case 'ToyCarMaterial'
            transition.new_color = {'ToyCarMaterial', 'warehouse', 'createBottomHalf'};

        case 'Rubber'
            transition.new_color = {'Rubber', 'warehouse', 'createWheels'};

        case 'Metal'
            transition.new_color = {'Metal', 'warehouse', 'createTopHalf'};

        otherwise
            transition.new_color = colors;
            % fire = 0; return;
    end
transition.override = 1;
transition.selected_tokens = tokenId;
fire = 1;
