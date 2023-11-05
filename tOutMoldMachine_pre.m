function [fire, transition] = tOutMoldMachine_pre (transition)
release('tInMoldMachine')
fire = true;