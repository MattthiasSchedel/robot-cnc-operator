function [png] = warehouse_pdf()

    png.PN_name = 'Warehouse';

    png.set_of_Ps = {'pMaterials', 'pWarehouse'}; 

    png.set_of_Ts = {'tPopulateWarehouse'} ;

    png.set_of_As = {'pMaterials', 'tPopulateWarehouse', 1, ...
                    'tPopulateWarehouse', 'pWarehouse', 1, ...
                    'pWarehouse', 'tWarehouseOut', 1};

    png.set_of_Ports = {'tWarehouseOut'};

end