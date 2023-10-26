function [fire, transition] = tCNC2FinishedToDeliveryBox_pre (transition)
release(['tCNC2RawToCNC2Finished'])
granted = requestSR({'Robot' 1});
fire = granted;
