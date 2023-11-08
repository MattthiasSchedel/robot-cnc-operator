function [fire, transition] = tCombinerIn2_pre (transition)

    tiresTokID = tokenAnyColor('pAfterMat' , 1, {'tires'}); %subject to change
    lowerBodyTokID = tokenAnyColor('pAfterMat' , 1, {'lowerBody'}); %subject to change
    
    if tiresTokID && lowerBodyTokID
        transition.override = 1;
        transition.selected_tokens = [tiresTokID, lowerBodyTokID];
        fire = 1; 
        return;
    else
        fire = 0;
        return;
    end
    