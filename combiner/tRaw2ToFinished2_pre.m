function [fire, transition] = tRaw2ToFinished2_pre (transition)

granted = requestSR({'CombinerMachine2' 1});
fire = granted;