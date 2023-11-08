function [fire, transition] = tCombinerOut_pre (transition)
    transition.new_color = {'CarPutTogheter', 'combiner', 'painter'};
    
    transition.override = 1;
    fire = 1;
    disp('fire tCombinerOut_pre');