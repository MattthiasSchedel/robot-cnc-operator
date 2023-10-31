function [png] = PDF_IMC()

png.PN_name = 'IMC';                % NAME OF THE MODULE
png.set_of_Ps = {'pStart', 'pAfterCNC', 'pFinal', 'pAfterPaint'};        % SET OF PLACES
png.set_of_Ts = {};                 % SET OF TRANSITIONS

% SET OF ARCS
png.set_of_As = {'pStart','tIN',1, 'tOUT','pAfterCNC',1, 'pAfterCNC', 'tPaintingIn', 1 ...
                'tPaintingOut', 'pAfterPaint', 1, 'pAfterPaint', 'tInFailCheck', 1 ...
                'tOutFailCheck', 'pFinal', 1};
