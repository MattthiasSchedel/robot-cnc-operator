function [fire, transition] = tCNC1FinishedToDeliveryBox_pre (transition)
release('tCNC1RawToCNC1Finished')
granted = requestSR({'Robot' 1});
fire = granted;
