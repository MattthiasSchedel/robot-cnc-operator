% FILEPATH: /Users/matthiasschedel/Documents/MATLAB/robot-cnc-operator/AGV/main.m
% This function initializes the simulation environment for the robot-cnc-operator AGV system. 
% It sets up the global variables, the Petri net structure, and the initial dynamics of the system. 
% It then runs the simulation and plots the results.
function main()
        clear all; % clears all variables in the workspace
        clc; % clears the command window

        global global_info; % declares a global variable

        % initializes the global variables
        global_info.CASE = 1;
        global_info.STOP_AT = 400;
        global_info.agv_counter = 0;
        global_info.counter = 0;
        global_info.agvIndex = 1;
        global_info.chargingIndex = 1;
        global_info.batteryConsumptionRate = 1.5;

        % creates the Petri net structure
        pns = pnstruct({'agv_pdf', 'charging_module_pdf', 'warehouse_pdf', ...
                        'combiner_pdf', 'robot_cnc_pdf', ...
                        'createPlasticGlass_module_pdf', 'createWheels_module_pdf', ...
                        'bottomHalf_module_pdf', 'failCheck_module_pdf', ...
                        'painting_module_pdf', 'PDF_IMC'});

        % sets the initial dynamics of the system
        dynamic.m0 = {'pMaterials', 100, 'pAGVGarage', 10, ...
                      'pCharginStationsGenerator', 4, 'pOccupied1', 1, ...
                      'pOccupied2', 1, 'pCNC1Occupied', 1, 'pCNC2Occupied', 1, ...
                      'pMachineState', 1, 'pMachineStateWheels', 1, ...
                      'pMachineStateGlass', 1, 'pMachineStateBottom', 1};
        dynamic.ft = {'tPopulateWarehouse', 1/50, 'tMove', 1/20, ...
                      'tChargingStation1', 5, 'tChargingStation2', 5, ...
                      'tChargingStation3', 5, 'tChargingStation4', 4, ...
                      'tChargingStation5', 7, 'tRaw1ToFinished1', 5, ...
                      'tRaw2ToFinished2', 6, 'allothers', 1};
        dynamic.ip = {'tUnloadAGV', 1, 'tAGVToCharging', 1, 'tFinishedCharging', 1};
        dynamic.re = {'Combiner_Worker', 1, inf, 'CombinerMachine1', 1, inf, ...
                      'CombinerMachine2', 1, inf, 'Robot', 1, inf, 'CNC1', 1, inf, ...
                      'CNC2', 1, inf, 'paintMachine', 1, inf, 'agv', 1, inf, ...
                      'human', 1, inf, 'glassCreator', 1, inf, 'wheelsCreater', 1, ...
                           inf, 'moldMachine', 1, inf};

        % initializes the dynamics of the Petri net
        pni = initialdynamics(pns, dynamic);

        % runs the simulation
        sim = gpensim(pni);

        % Create a 2x1 tiled layout
        tiledlayout(2, 1);
        
        % First plot
        nexttile;
        plotp(sim, {'pWarehouse', 'pFailedItems', 'pProductionOut'});
        
        % Second plot
        nexttile;
        plotp(sim, {'pMoving', 'pCurrentlyCharging', 'pAGVIdle'});

        % prints the occupancy of the charging stations
        occupancy(sim, {'tChargingStation1', 'tChargingStation2', ...
                        'tChargingStation3', 'tChargingStation4', 'tChargingStation5'});

        % plots the graph of the Petri net
        plotGC(sim);

        % prints the final colors of the Petri net
        prnfinalcolors(sim);

