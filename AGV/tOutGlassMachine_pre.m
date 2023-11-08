function [fire, transition] = tOutGlassMachine_pre (transition)
release('tInGlassMachine')
fire = true;