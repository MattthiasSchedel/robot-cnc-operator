% FILEPATH: /Users/matthiasschedel/Documents/MATLAB/robot-cnc-operator/AGV/tAGVIn_pre.m
function [fire, transition] = tAGVIn_pre(transition)
    % Has to be done because colors may change order
    tokenId = tokenArrivedEarly('pBeforeMat', 1);
    colors = get_color('pBeforeMat', tokenId);
    transition.new_color = colors;
    transition.override = true;
    transition.selected_tokens = tokenId;
    fire = true;
end
