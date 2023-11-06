function [png] = PDF_IMC()

png.PN_name = 'IMC';                % NAME OF THE MODULE
png.set_of_Ps = {'pAfter'};        % SET OF PLACES
png.set_of_Ts = {};                 % SET OF TRANSITIONS

% SET OF ARCS
png.set_of_As = {'tWarehouseOut','pAfter',1};
