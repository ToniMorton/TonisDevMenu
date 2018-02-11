_arrayid = _this select 0;
_vehicle = vehicleclassarrays select _arrayid;
_spawnedveh = _vehicle createvehicle (player modeltoworld[0,8,0]);
_hinttext = format ["'%1' Spawned",_vehicle];
[_hinttext] call Toni_fnc_structuredhint;