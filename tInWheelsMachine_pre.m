function [fire, transition] = tInWheelsMachine_pre (transition)

granted = requestSR({'wheelsCreater', 1});
fire = granted;