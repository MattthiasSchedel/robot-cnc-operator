function [fire, transition] = tInGlassMachine_pre (transition)

granted = requestSR({'glassCreator', 1});
fire = granted;