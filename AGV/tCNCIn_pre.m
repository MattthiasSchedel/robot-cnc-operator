function [fire, transition] = tCNCIn_pre (transition)
    tokID = tokenAnyColor('pAfterMat', 1, {'Metal'}); %subject to change
    if tokID
        transition.override = 1;
        transition.selected_tokens = tokID;
        fire = tokID;

    else
        fire = 0;
    end
end
    