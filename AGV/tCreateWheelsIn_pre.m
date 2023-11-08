function [fire, transition] = tCreateWheelsIn_pre (transition)

tokID = tokenAnyColor('pAfterMat' , 1, {'Rubber'}); %subject to change
transition.selectedToken = tokID;
transition.override = 1;
fire = tokID;