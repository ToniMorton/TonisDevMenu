execvm "\Dev_Menu_Main\Config.sqf";
[] spawn {
    while{true} do 
    {
        waitUntil{!isNull (findDisplay 602)};
        ((findDisplay 602) displayCtrl 1797) ctrlEnable false;
        ((findDisplay 602) displayCtrl 1797) ctrlSetText "Already Loaded";
        waitUntil{isNull (findDisplay 602)}
    };
};
airvehclass_array = [""];
airvehname_array = ["------------ AIR ------------"];
Landvehclass_array = [""];
Landvehname_array = ["------------ GROUND ------------"];
Shipclass_array = [""];
Shipname_array = ["------------ BOATS ------------"];
vehiclenamearrays = [];
vehicleclassarrays = [];
[] call Toni_fnc_vehiclelistgen;
[] call Toni_fnc_weaponlistgen;

disableSerialization;
(findDisplay 46) displayAddEventHandler ["KeyDown","_this call Toni_fnc_keys;false;"];
onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";
player addeventhandler ["Respawn",{onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";}];
["Loaded Successfully"] call Toni_fnc_structuredhint;


[] spawn {
    while{true} do 
    {
    waitUntil{!isNull (findDisplay 49)};
        ((findDisplay 49) displayCtrl 2) ctrlEnable false;
        ((findDisplay 49) displayCtrl 2) ctrlSetText "Toni's Dev Menu v6.0";
        ((findDisplay 49) displayCtrl 103) ctrlEnable false;
        ((findDisplay 49) displayCtrl 103) ctrlSetText "Copyright 2017, Toni Morton";
        ((findDisplay 49) displayCtrl 122) ctrlEnable false;
        ((findDisplay 49) displayCtrl 122) ctrlShow false;
        waitUntil{isNull (findDisplay 49)}
    };
};