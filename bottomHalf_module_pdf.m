function [png] = bottomHalf_module_pdf()

png.PN_name = 'Bottom half module';

png.set_of_Ps = {'pBottomMagazine', 'pInBottomMold', 'pOutBottomMold', 'pDelivery', 'pMachineStateBottom'};

png.set_of_Ts = {'tBottomMoldIn', 'tBottomMoldOut', 'tInMoldMachine', 'tMold', 'tOutMoldMachine'};

png.set_of_As = {'tBottomMoldIn', 'pBottomMagazine', 1, 'pBottomMagazine', 'tInMoldMachine', 1, ...
                'tInMoldMachine', 'pInBottomMold', 1, 'pInBottomMold', 'tMold', 1, ...
                'tMold', 'pOutBottomMold', 1, 'pOutBottomMold', 'tOutMoldMachine', 1, ...
                'tOutMoldMachine', 'pDelivery', 1, 'tOutMoldMachine', 'pMachineStateBottom', 1, ...
                'pMachineStateBottom', 'tInMoldMachine', 1, 'pDelivery', 'tBottomMoldOut', 1};

png.set_of_Ports = {'tBottomMoldIn', 'tBottomMoldOut'};