function [fire, transition] = tInFailCheck_pre (transition)

tokID = tokenAnyColor('pAfterMat' , 1, {'finished_car'}); %subject to change
transition.selectedToken = tokID;
transition.override = 1;
fire = tokID;