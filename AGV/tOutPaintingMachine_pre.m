function [fire, transition] = tOutPaintingMachine_pre (transition)
release('tInPaintingMachine')
fire = true;