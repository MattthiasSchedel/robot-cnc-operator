function [fire, transition] = tCreateGlassOut_pre (transition)

transition.new_color = 'GlassDone';
transition.override = 1;

fire = true;