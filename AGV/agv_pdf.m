function [png] = agv_pdf()
    % Define the Petri net graph for an Automated Guided Vehicle system

    % Petri net name
    png.PN_name = 'AGV';

    % Set of places
    png.set_of_Ps = {
        'pAGVPickup', 'pMoving', 'pAGVDropoff', ...
        'pUnloadedAGV', 'pAGVIdle', 'pAGVGarage'
    }; 

    % Set of transitions
    png.set_of_Ts = {
        'tLoadAGV', 'tMove', 'tUnloadAGV', ...
        'tSpawnAGV', 'tAGVIn', 'tAGVOut', 'tAGVToCharging', ...
        'tAGVFromCharging', 'tToIdle'
    };

    % Set of external ports
    png.set_of_Ports = {
        'tAGVIn', 'tAGVOut', 'tAGVToCharging', ...
        'tAGVFromCharging'
    };

    % Set of arcs
    png.set_of_As = {
        'tAGVIn', 'pAGVPickup', 1, ...
        'pAGVPickup', 'tLoadAGV', 1, 'tLoadAGV', 'pMoving', 1, ...
        'pMoving', 'tMove', 1, 'tMove', 'pMoving', 1, ... % Loopback to pMoving indicating continuous movement
        'pMoving', 'tUnloadAGV', 1, 'tUnloadAGV', 'pAGVDropoff', 1, ...
        'tUnloadAGV', 'pUnloadedAGV', 1, ...
        'pAGVDropoff', 'tAGVOut', 1, ...
        'pAGVGarage', 'tSpawnAGV', 1, 'tSpawnAGV', 'pAGVIdle', 1, ...
        'tAGVFromCharging', 'pAGVIdle', 1, ...
        'pAGVIdle', 'tLoadAGV', 1, ...
        'pUnloadedAGV', 'tAGVToCharging', 1, ...
        'pUnloadedAGV', 'tToIdle', 1, 'tToIdle', 'pAGVIdle', 1
    };
end
