function [fire, transition] = tInMoldMachine_pre (transition)

granted = requestSR({'moldMachine', 1});
fire = granted;