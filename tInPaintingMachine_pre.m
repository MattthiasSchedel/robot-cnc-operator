function [fire, transition] = tInPaintingMachine_pre (transition)

granted = requestSR({'paintMachine', 1});
fire = granted;