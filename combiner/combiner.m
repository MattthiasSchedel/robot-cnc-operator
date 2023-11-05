global global_info
clc;
global_info.CASE = 1;
global_info.STOP_AT = 50;

pns = pnstruct({'combiner_pdf', 'PDF_IMC'});

dynamic.m0 = {'pBefore', 10, 'pOccupied1', 1, 'pOccupied2', 1};
dynamic.ft = {'tRaw1ToFinished1',5, 'tRaw2ToFinished2', 6, 'allothers', 1};

dynamic.re = {'Combiner_Worker', 1, inf, 'CombinerMachine1', 1, inf, 'CombinerMachine2', 1, inf};

pni = initialdynamics(pns, dynamic);

sim = gpensim(pni);

plotp(sim, {'pBefore', 'finished1', 'finished2', 'pAfter'})
prnss(sim)
occupancy(sim, {'tStart1ToRaw1', 'tStart2ToRaw2', 'tRaw1ToFinished1', 'tRaw2ToFinished2', 'tJoin'})
plotGC(sim)
