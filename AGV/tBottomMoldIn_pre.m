function [fire, transition] = tBottomMoldIn_pre (transition)

tokID = tokenAnyColor('pAfterMat' , 1, {'ToyCarMaterial'}); %subject to change
transition.selected_tokens = tokID;
transition.override = 1;
fire = tokID;