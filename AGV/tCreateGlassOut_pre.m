function [fire, transition] = tCreateGlassOut_pre (transition)

transition.new_color = {'windshield', 'createPlacticGlass', 'combiner'};  
transition.override = 1;

fire = true;
disp('fire tCreateGlassOut_pre')