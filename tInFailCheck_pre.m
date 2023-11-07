function [fire, transition] = tInFailCheck_pre (transition)

tokID = tokenAnyColor('pAfterTravel' , 1, {'CarDone'}); %subject to change

fire = tokID;