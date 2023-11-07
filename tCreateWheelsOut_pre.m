function [fire, transition] = tCreateWheelsOut_pre (transition)

transition.new_color = 'WheelDone';
transition.override = 1;

fire = true;