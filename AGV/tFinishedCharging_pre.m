function [fire, transition] = tFinishedCharging_pre (transition)

tokID = tokenAnyColor('pCurrentlyCharging',1, {'100'});
if(tokID)
    colors = get_color('pCurrentlyCharging', tokID);
    transition.new_color = colors;
    transition.override = 1;
    transition.selected_tokens = tokID;
    
    fire = tokID;
else
    fire = 0;
end