function [png] = PDF_IMC()

png.PN_name = 'IMC';                % NAME OF THE MODULE
png.set_of_Ps = {'pBeforeMat', 'pAfterMat',...
                 'pBeforeCharging', 'pAfterCharging', 'pAss', 'pProductionOut'}; % SET OF PLACES
png.set_of_Ts = {};                 % SET OF TRANSITIONS

% SET OF ARCS
png.set_of_As = {'pBeforeMat','tAGVIn',1, ...
                'tAGVOut', 'pAfterMat',1,...
                'tAGVToCharging', 'pBeforeCharging',1,...
                'pBeforeCharging', 'tINChargingModule',1,...
                'tOUTChargingModule', 'pAfterCharging',1,...
                'pAfterCharging', 'tAGVFromCharging', 1 ...
                'tWarehouseOut', 'pBeforeMat', 1, ...
                'pAfterMat', 'tCombinerIn1', 2, ...
                'pAfterMat', 'tCNCIn', 1, ...
                'pAfterMat', 'tCombinerIn2', 2, ...
                'tCombinerOut', 'pBeforeMat', 1, ...
                'tCombinerOut', 'pAss', 1, ...
                'tCNCOut', 'pBeforeMat', 1 ...
                'pAfterMat', 'tCreateGlassIn', 1, ...
                'tCreateGlassOut', 'pBeforeMat', 1, ...
                'pAfterMat', 'tCreateWheelsIn', 1, ...
                'tCreateWheelsOut', 'pBeforeMat', 1,...
                'pAfterMat', 'tPaintingIn', 1, ...
                'tPaintingOut', 'pBeforeMat', 1, ...
                'pAfterMat', 'tInFailCheck', 1, ...
                'tOutFailCheck', 'pProductionOut', 1, ...
                'pAfterMat', 'tBottomMoldIn', 1, ...
                'tBottomMoldOut', 'pBeforeMat', 1};


