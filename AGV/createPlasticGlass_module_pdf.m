function [png] = createPlasticGlass_module_pdf()

png.PN_name = 'Create plastic glass module';

png.set_of_Ps = {'pGlassMagazine', 'pInCreateGlass', 'pOutCreateGlass', 'pGlassDelivery', 'pMachineStateGlass'};

png.set_of_Ts = {'tCreateGlassIn', 'tCreateGlassOut', 'tInGlassMachine', 'tCreateGlass', 'tOutGlassMachine'};

png.set_of_As = {'tCreateGlassIn', 'pGlassMagazine', 1, 'pGlassMagazine', 'tInGlassMachine', 1, ...
                'tInGlassMachine', 'pInCreateGlass', 1, 'pInCreateGlass', 'tCreateGlass', 1, ...
                'tCreateGlass', 'pOutCreateGlass', 1, 'pOutCreateGlass', 'tOutGlassMachine', 1, ...
                'tOutGlassMachine', 'pGlassDelivery', 1, 'tOutGlassMachine', 'pMachineStateGlass', 1, ...
                'pMachineStateGlass', 'tInGlassMachine', 1, 'pGlassDelivery', 'tCreateGlassOut', 1};

png.set_of_Ports = {'tCreateGlassIn', 'tCreateGlassOut'};