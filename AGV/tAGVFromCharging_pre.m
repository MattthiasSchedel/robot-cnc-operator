function [fire, transition] = tAGVFromCharging_pre(transition)
    % Pre function for tAGVFromCharging transition

    tokenId = tokenArrivedEarly('pAfterCharging', 1);
    colors = get_color('pAfterCharging', tokenId);

    transition.new_color = {colors{1}, colors{2}, colors{3}}; % name, speed, battery
    transition.override = 1;
    transition.selected_tokens = tokenId;
    fire = 1;
end
