function [png] = PDF_IMC()

png.PN_name = 'IMC';                % NAME OF THE MODULE
png.set_of_Ps = {'pBefore', 'pAfter'};        % SET OF PLACES
png.set_of_Ts = {};                 % SET OF TRANSITIONS

% SET OF ARCS
png.set_of_As = {'pBefore','tIN1',1, 'pBefore','tIN2',1, 'tOUT','pAfter',1};
