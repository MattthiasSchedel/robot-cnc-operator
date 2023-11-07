function [fire, transition] = tFinishedCharging_pre (transition)

tokID = tokenAnyColor('pCurrentlyCharging',1, {'100'});

transition.selected_tokens = tokID;

fire = tokID;