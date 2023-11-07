function [fire, transition] = tBottomMoldIn_pre (transition)

tokID = tokenAnyColor('pAfterTravel' , 1, {'ToyCarMaterial'}); %subject to change

fire = tokID;