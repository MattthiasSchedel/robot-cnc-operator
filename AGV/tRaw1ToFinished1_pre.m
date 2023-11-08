function [fire, transition] = tRaw1ToFinished1_pre (transition)

granted = requestSR({'CombinerMachine1' 1});
fire = granted;