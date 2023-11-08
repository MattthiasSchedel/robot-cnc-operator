function [fire, transition] = tMagazineToCNC1Raw_pre (transition)

granted = requestSR({'Robot' 1});
fire = granted;
