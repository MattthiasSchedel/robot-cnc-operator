function [fire, transition] = tBottomMoldOut_pre (transition)

transition.new_color = 'BottomHalfDone';
transition.override = 1;

fire = true;