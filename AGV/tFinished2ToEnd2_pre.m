function [fire, transition] = tFinished2ToEnd2_pre (transition)
    release('tRaw2ToFinished2')
granted = requestSR({'Combiner_Worker' 1});
fire = granted;
        