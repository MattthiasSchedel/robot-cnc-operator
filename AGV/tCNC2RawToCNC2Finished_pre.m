function [fire, transition] = tCNC2RawToCNC2Finished_pre (transition)

granted = requestSR({'CNC2' 1});
fire = granted;
