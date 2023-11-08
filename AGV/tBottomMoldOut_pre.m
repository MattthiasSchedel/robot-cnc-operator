function [fire, transition] = tBottomMoldOut_pre (transition)

transition.new_color = {'lowerBody', 'createBottomHalf', 'combiner'};
transition.override = 1;
disp('fire tBottomMoldOut_pre')
fire = true;