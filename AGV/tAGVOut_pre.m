function [fire, transition] = tAGVOut_pre (transition)
    tokenId = tokenArrivedEarly('pAGVDropoff',1);

    colors = get_color('pAGVDropoff', tokenId);

    material_type = colors{4};
    destination = colors{5};

    transition.new_color = {material_type, destination};
    transition.override = 1;
    transition.selected_tokens = tokenId;
    fire = 1;
    