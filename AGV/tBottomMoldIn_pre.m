function [fire, transition] = tBottomMoldIn_pre (transition)

tokID = tokenAnyColor('pAfterMat' , 1, {'ToyCarMaterial'}); %subject to change

fire = tokID;