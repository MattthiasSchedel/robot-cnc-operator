function [fire, transition] = tCNC1RawToCNC1Finished_pre (transition)

granted = requestSR({'CNC1' 1});
fire = granted;
