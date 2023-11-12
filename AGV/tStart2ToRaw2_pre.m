function [fire, transition] = tStart2ToRaw2_pre (transition)

granted = requestSR({'Combiner_Worker' 1}); % human loads the stock into the machine
fire = granted;
    