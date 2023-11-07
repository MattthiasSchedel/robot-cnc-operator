function [fire, transition] = tOutWheelsMachine_pre (transition)
release('tInWheelsMachine')
fire = true;