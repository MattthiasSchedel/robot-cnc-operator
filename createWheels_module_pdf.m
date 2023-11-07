function [png] = createWheels_module_pdf()

png.PN_name = 'Create wheels module';

png.set_of_Ps = {'pWheelsMagazine', 'pInCreateWheels', 'pOutCreateWheels', 'pDelivery', 'pMachineStateWheels'};

png.set_of_Ts = {'tCreateWheelsIn', 'tCreateWheelsOut', 'tInWheelsMachine', 'tCreateWheels', 'tOutWheelsMachine'};

png.set_of_As = {'tCreateWheelsIn', 'pWheelsMagazine', 1, 'pWheelsMagazine', 'tInWheelsMachine', 1, ...
                'tInWheelsMachine', 'pInCreateWheels', 1, 'pInCreateWheels', 'tCreateWheels', 1, ...
                'tCreateWheels', 'pOutCreateWheels', 1, 'pOutCreateWheels', 'tOutWheelsMachine', 1, ...
                'tOutWheelsMachine', 'pDelivery', 1, 'tOutWheelsMachine', 'pMachineStateWheels', 1, ...
                'pMachineStateWheels', 'tInWheelsMachine', 1, 'pDelivery', 'tCreateWheelsOut', 1};

png.set_of_Ports = {'tCreateWheelsIn', 'tCreateWheelsOut'};