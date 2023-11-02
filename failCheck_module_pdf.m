function [png] = failCheck_module_pdf()

png.PN_name = 'Failcheck module';

png.set_of_Ps = {'pBeforeCheck', 'pAfterCheck', 'pFailedItems'};

png.set_of_Ts = {'tInFailCheck', 'tOutFailCheck', 'tFailed', 'tCheckItem'};

png.set_of_As = {'tInFailCheck', 'pBeforeCheck', 1, 'pBeforeCheck', 'tCheckItem', 1, ...
                'tCheckItem', 'pAfterCheck', 1, ...
                'pAfterCheck', 'tOutFailCheck', 1, ...
                'pAfterCheck', 'tFailed', 1, 'tFailed', 'pFailedItems', 1};

png.set_of_Ports = {'tInFailCheck', 'tOutFailCheck'};

