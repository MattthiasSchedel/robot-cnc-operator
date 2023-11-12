function [png] = painting_module_pdf()

png.PN_name = 'Painting module';

png.set_of_Ps = {'pPaintMagazine', 'pInPainting', 'pOutPainting', 'pPaintingDelivery', 'pMachineState'};

png.set_of_Ts = {'tPaintingIn', 'tPaintingOut', 'tInPaintingMachine', 'tPaint', 'tOutPaintingMachine'};

png.set_of_As = {'tPaintingIn', 'pPaintMagazine', 1, 'pPaintMagazine', 'tInPaintingMachine', 1, ...
                'tInPaintingMachine', 'pInPainting', 1, 'pInPainting', 'tPaint', 1, ...
                'tPaint', 'pOutPainting', 1, 'pOutPainting', 'tOutPaintingMachine', 1, ...
                'tOutPaintingMachine', 'pPaintingDelivery', 1, 'tOutPaintingMachine', 'pMachineState', 1, ...
                'pMachineState', 'tInPaintingMachine', 1, 'pPaintingDelivery', 'tPaintingOut', 1};

png.set_of_Ports = {'tPaintingIn', 'tPaintingOut'};