function [fire, transition] = tFinished1ToEnd1_pre (transition)
    release('tRaw1ToFinished1')
    granted = requestSR({'Combiner_Worker' 1});
fire = granted;
    