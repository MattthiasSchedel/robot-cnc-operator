function [fire, transition] = tPaintingIn_pre (transition)

tokID = tokenAnyColor('pAfterMat' , 1, {'CarPutTogheter'}); %subject to change
transition.override = 1;
transition.selected_tokens = tokID;
fire = tokID;