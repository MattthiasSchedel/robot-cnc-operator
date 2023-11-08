function [fire, transition] = tCombinerIn1_pre (transition)

windshieldTokID = tokenAnyColor('pAfterMat' , 1, {'windshield'}); %subject to change
upperBodyTokID = tokenAnyColor('pAfterMat' , 1, {'upperBody'}); %subject to change

if windshieldTokID && upperBodyTokID
    transition.override = 1;
    transition.selected_tokens = [windshieldTokID, upperBodyTokID];
    fire = 1; 
    return;
else
    fire = 0;
    return;
end
