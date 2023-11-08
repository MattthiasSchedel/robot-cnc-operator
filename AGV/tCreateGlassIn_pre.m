function [fire, transition] = tCreateGlassIn_pre (transition)

tokID = tokenAnyColor('pAfterMat' , 1, {'Plastic'}); %subject to change
transition.selected_tokens = tokID;
transition.override = 1; 
fire = tokID;