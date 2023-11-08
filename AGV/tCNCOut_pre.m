function [fire, transition] = tCNCOut_pre(transition)
    transition.new_color = {'upperBody', 'createTopHalf', 'combiner'};
    transition.override = 1;
    fire = 1;
    disp('Firing transition tCNCOut_pre')
