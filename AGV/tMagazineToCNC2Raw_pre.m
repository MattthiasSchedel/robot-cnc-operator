function [fire, transition] = tMagazineToCNC2Raw_pre (transition)

granted = requestSR({'Robot' 1});
fire = granted;
