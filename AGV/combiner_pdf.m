function [png] = combiner_pdf()

    png.PN_name = 'Combiner';

    png.set_of_Ps = {'pStart1', 'pRaw1', 'pFinished1', 'pEnd1', ...
                     'pStart2', 'pRaw2', 'pFinished2', 'pEnd2', ...
                     'pOccupied1', 'pOccupied2', 'pJoin'};

    png.set_of_Ts = {'tCombinerIn1', 'tCombinerIn2', 'tCombinerOut', ...
                     'tStart1ToRaw1', 'tRaw1ToFinished1', 'tFinished1ToEnd1', 'tJoin', ...
                     'tStart2ToRaw2', 'tRaw2ToFinished2', 'tFinished2ToEnd2'};

    png.set_of_As = {'tCombinerIn1', 'pStart1', 1, ...
                     'pStart1', 'tStart1ToRaw1', 1, 'pOccupied1', 'tStart1ToRaw1', 1, ...
                     'tStart1ToRaw1', 'pRaw1', 1, ...
                     'pRaw1', 'tRaw1ToFinished1', 1, ...
                     'tRaw1ToFinished1', 'pFinished1', 1, ...
                     'pFinished1', 'tFinished1ToEnd1', 1, 'tFinished1ToEnd1', 'pOccupied1', 1, ...
                     'tFinished1ToEnd1', 'pEnd1', 1, ...
                     'pEnd1', 'tJoin', 1, ...
                     'tJoin', 'pJoin', 1, ...
                     'tCombinerIn2', 'pStart2', 1, ...
                     'pStart2', 'tStart2ToRaw2', 1, 'pOccupied2', 'tStart2ToRaw2', 1, ...
                     'tStart2ToRaw2', 'pRaw2', 1, ...
                     'pRaw2', 'tRaw2ToFinished2', 1, ...
                     'tRaw2ToFinished2', 'pFinished2', 1, ...
                     'pFinished2', 'tFinished2ToEnd2', 1, 'tFinished2ToEnd2', 'pOccupied2', 1, ...
                     'tFinished2ToEnd2', 'pEnd2', 1, ...
                     'pEnd2', 'tJoin', 1, ...
                     'tJoin', 'pJoin', 1, ...
                     'pJoin', 'tCombinerOut', 1};

    png.set_of_Ports = {'tCombinerIn1', 'tCombinerIn2', 'tCombinerOut'};
end
