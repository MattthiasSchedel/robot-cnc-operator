function [fire, transition] = tStart1ToRaw1_pre (transition)

granted = requestSR({'Combiner_Worker' 1}); % human worker loads the material 
fire = granted;
