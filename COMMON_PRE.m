function [fire, transition] = COMMON_PRE (transition)
global global_info;
tokID1 = [];

% warehouse module
if strcmp(transition.name, 'tPopulateWarehouse')
    % Code to handle tPopulateWarehouse transition

    materials = {'Plastic', 'ToyCarMaterial', 'Rubber', 'Metal'};
    index = mod(global_info.counter, 4) + 1;
    global_info.counter = global_info.counter + 1;
    transition.new_color = {materials{index}};
    transition.override = 1;
    fire = 1;


elseif strcmp(transition.name, 'tWarehouseOut')
    % Code to handle tWarehouseOut transition
    tokenId = tokenArrivedEarly('pWarehouse',1);
    colors = get_color('pWarehouse',tokenId);
    material = colors{1};
    % display(tokenId);
    switch material
        case 'Plastic'
            transition.new_color = {'Plastic','warehouse', 'createPlacticGlass'}; % type, location, destination

        case 'ToyCarMaterial'
            transition.new_color = {'ToyCarMaterial', 'warehouse', 'createBottomHalf'};

        case 'Rubber'
            transition.new_color = {'Rubber', 'warehouse', 'createWheels'};

        case 'Metal'
            transition.new_color = {'Metal', 'warehouse', 'createTopHalf'};

        otherwise
            transition.new_color = colors;
            % fire = 0; return;
    end
    transition.override = 1;
    transition.selected_tokens = tokenId;
    fire = 1;


% AGV module
elseif strcmp(transition.name, 'tLoadAGV')
    % Code to handle tLoadAGV transition

elseif strcmp(transition.name, 'tMove')
    % Code to handle tMove transition

elseif strcmp(transition.name, 'tUnloadAGV')
    % Code to handle tUnloadAGV transition

elseif strcmp(transition.name, 'tSpawnAGV')
    % Code to handle tSpawnAGV transition

elseif strcmp(transition.name, 'tToIdle')
    % Code to handle tToIdle transition


% Charging module
elseif strcmp(transition.name, 'tINChargingModule')
    % Code to handle tINChargingModule transition

elseif strcmp(transition.name, 'tAssignChargingStation')
    % Code to handle tAssignChargingStation transition

elseif strcmp(transition.name, 'tChargingStation1')
    % Code to handle tChargingStation1 transition

elseif strcmp(transition.name, 'tChargingStation2')
    % Code to handle tChargingStation2 transition

elseif strcmp(transition.name, 'tChargingStation3')
    % Code to handle tChargingStation3 transition

elseif strcmp(transition.name, 'tChargingStation4')
    % Code to handle tChargingStation4 transition

elseif strcmp(transition.name, 'tChargingStation5')
    % Code to handle tChargingStation5 transition

elseif strcmp(transition.name, 'tGiveChargingStationName')
    % Code to handle tGiveChargingStationName transition

elseif strcmp(transition.name, 'tFinishedCharging')
    % Code to handle tFinishedCharging transition

elseif strcmp(transition.name, 'tReturnChargingStation')
    % Code to handle tReturnChargingStation transition

elseif strcmp(transition.name, 'tOUTChargingModule')
    % Code to handle tOUTChargingModule transition


% CNC
elseif strcmp(transition.name, 'tCNCIn')
    % Code to handle tCNCIn transition

elseif strcmp(transition.name, 'tCNCOut')
    % Code to handle tCNCOut transition

elseif strcmp(transition.name, 'tMagazineToCNC1Raw')
    % Code to handle tMagazineToCNC1Raw transition

elseif strcmp(transition.name, 'tMagazineToCNC2Raw')
    % Code to handle tMagazineToCNC2Raw transition

elseif strcmp(transition.name, 'tCNC1RawToCNC1Finished')
    % Code to handle tCNC1RawToCNC1Finished transition

elseif strcmp(transition.name, 'tCNC2RawToCNC2Finished')
    % Code to handle tCNC2RawToCNC2Finished transition

elseif strcmp(transition.name, 'tCNC1FinishedToDeliveryBox')
    % Code to handle tCNC1FinishedToDeliveryBox transition

elseif strcmp(transition.name, 'tCNC2FinishedToDeliveryBox')
    % Code to handle tCNC2FinishedToDeliveryBox transition


% plastic glass
elseif strcmp(transition.name, 'tCreateGlassIn')
    % Code to handle tCreateGlassIn transition

elseif strcmp(transition.name, 'tCreateGlassOut')
    % Code to handle tCreateGlassOut transition

elseif strcmp(transition.name, 'tInGlassMachine')
    % Code to handle tInGlassMachine transition

elseif strcmp(transition.name, 'tCreateGlass')
    % Code to handle tCreateGlass transition

elseif strcmp(transition.name, 'tOutGlassMachine')
    % Code to handle tOutGlassMachine transition


% bottom part
elseif strcmp(transition.name, 'tBottomMoldIn')
    % Code to handle tBottomMoldIn transition

elseif strcmp(transition.name, 'tBottomMoldOut')
    % Code to handle tBottomMoldOut transition

elseif strcmp(transition.name, 'tInMoldMachine')
    % Code to handle tInMoldMachine transition

elseif strcmp(transition.name, 'tMold')
    % Code to handle tMold transition

elseif strcmp(transition.name, 'tOutMoldMachine')
    % Code to handle tOutMoldMachine transition


% tires
elseif strcmp(transition.name, 'tCreateWheelsIn')
    % Code to handle tCreateWheelsIn transition

elseif strcmp(transition.name, 'tCreateWheelsOut')
    % Code to handle tCreateWheelsOut transition

elseif strcmp(transition.name, 'tInWheelsMachine')
    % Code to handle tInWheelsMachine transition

elseif strcmp(transition.name, 'tCreateWheels')
    % Code to handle tCreateWheels transition

elseif strcmp(transition.name, 'tOutWheelsMachine')
    % Code to handle tOutWheelsMachine transition


% combiner
elseif strcmp(transition.name, 'tCombinerIn1')
    % Code to handle tCombinerIn1 transition

elseif strcmp(transition.name, 'tCombinerIn2')
    % Code to handle tCombinerIn2 transition

elseif strcmp(transition.name, 'tCombinerOut')
    % Code to handle tCombinerOut transition

elseif strcmp(transition.name, 'tStart1ToRaw1')
    % Code to handle tStart1ToRaw1 transition

elseif strcmp(transition.name, 'tRaw1ToFinished1')
    % Code to handle tRaw1ToFinished1 transition

elseif strcmp(transition.name, 'tFinished1ToEnd1')
    % Code to handle tFinished1ToEnd1 transition

elseif strcmp(transition.name, 'tJoin')
    % Code to handle tJoin transition

elseif strcmp(transition.name, 'tStart2ToRaw2')
    % Code to handle tStart2ToRaw2 transition

elseif strcmp(transition.name, 'tRaw2ToFinished2')
    % Code to handle tRaw2ToFinished2 transition

elseif strcmp(transition.name, 'tFinished2ToEnd2')
    % Code to handle tFinished2ToEnd2 transition


% painter
elseif strcmp(transition.name, 'tPaintingIn')
    % Code to handle tPaintingIn transition

elseif strcmp(transition.name, 'tPaintingOut')
    % Code to handle tPaintingOut transition

elseif strcmp(transition.name, 'tInPaintingMachine')
    % Code to handle tInPaintingMachine transition

elseif strcmp(transition.name, 'tPaint')
    % Code to handle tPaint transition

elseif strcmp(transition.name, 'tOutPaintingMachine')
    % Code to handle tOutPaintingMachine transition


% fail check
elseif strcmp(transition.name, 'tInFailCheck')
    % Code to handle tInFailCheck transition

elseif strcmp(transition.name, 'tOutFailCheck')
    % Code to handle tOutFailCheck transition

elseif strcmp(transition.name, 'tFailed')
    % Code to handle tFailed transition

elseif strcmp(transition.name, 'tCheckItem')
    % Code to handle tCheckItem transition


else

end
