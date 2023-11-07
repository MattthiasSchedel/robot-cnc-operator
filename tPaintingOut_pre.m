function [fire, transition] = tPaintingOut_pre (transition)

transition.new_color = 'PaintingDone';
transition.override = 1;

fire = true;