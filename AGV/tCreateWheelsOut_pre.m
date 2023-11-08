function [fire, transition] = tCreateWheelsOut_pre (transition)

transition.new_color = {'tires', 'createWheels', 'combiner'};
transition.override = 1;
fire = 1;
disp('fire tCreateWheelsOut_pre')