% FILEPATH: /Users/matthiasschedel/Documents/MATLAB/robot-cnc-operator/AGV/warehouse_pdf.m

function [png] = warehouse_pdf()
% Function to generate a Petri net graph of a warehouse
% Inputs: None
% Outputs: png - a struct containing the Petri net graph information

    % Define Petri net graph properties
    png.PN_name = 'Warehouse';
    png.set_of_Ps = {'pMaterials', 'pWarehouse'}; 
    png.set_of_Ts = {'tPopulateWarehouse', 'tWarehouseOut'} ;
    png.set_of_As = {'pMaterials', 'tPopulateWarehouse', 1, ...
                    'tPopulateWarehouse', 'pWarehouse', 1, ...
                    'pWarehouse', 'tWarehouseOut', 1};
    png.set_of_Ports = {'tWarehouseOut'};

end