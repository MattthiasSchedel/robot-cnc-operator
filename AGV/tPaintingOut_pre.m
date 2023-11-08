function [fire, transition] = tPaintingOut_pre (transition)

transition.new_color = {'finished_car', 'painter', 'failcheck'} ;
transition.override = 1;

fire = true;
disp('Painting out')