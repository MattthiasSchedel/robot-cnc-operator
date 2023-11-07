function [fire, transition] = tAGVIn_pre (transition)
    % has to be done because colors may change order
    tokenId = tokenArrivedEarly('pBeforeMat',1);
    colors = get_color('pBeforeMat', tokenId);
    transition.new_color = colors;
    transition.override = 1;
    transition.selected_tokens = tokenId;
    fire = 1;
    