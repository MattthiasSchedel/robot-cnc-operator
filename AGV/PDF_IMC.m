function [png] = PDF_IMC()

png.PN_name = 'IMC';                % NAME OF THE MODULE
png.set_of_Ps = {'pBeforeMat', 'pAfterMat',...
                 'pBeforeCharging', 'pAfterCharging'}; % SET OF PLACES
png.set_of_Ts = {};                 % SET OF TRANSITIONS

% SET OF ARCS
png.set_of_As = {'pBeforeMat','tAGVIn',1, ...
                'tAGVOut', 'pAfterMat',1,...
                'tAGVToCharging', 'pBeforeCharging',1,...
                'pAfterCharging', 'tAGVFromCharging', 1 ...
                'tWarehouseOut', 'pBeforeMat', 1};
