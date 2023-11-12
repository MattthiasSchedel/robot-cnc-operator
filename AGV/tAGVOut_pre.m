function [fire, transition] = tAGVOut_pre(transition)
    % Pre function for tAGVOut transition

    tokenId = tokenArrivedEarly('pAGVDropoff', 1);
    colors = get_color('pAGVDropoff', tokenId);

    materialType = colors{4};
    destination = colors{5};

    transition.new_color = {materialType, destination};
    transition.override = 1;
    transition.selected_tokens = tokenId;
    fire = 1;
end
