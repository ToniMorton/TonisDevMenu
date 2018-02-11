Toni_makezeus = 
{
Toni_sidelogic = creategroup sideLogic;  
Toni_Zeus  = Toni_sidelogic createunit ["ModuleCurator_F", [0, 90, 90],[],0.5,"NONE"];    
Toni_Zeus setvariable ["text","Toni_Zeus"];     
Toni_Zeus setvariable ["Addons",3,true];
Toni_Zeus setvariable ["owner", getplayeruid player];  
Toni_Zeus setvariable ["vehicleinit","_this setvariable ['Addons',3,true]; _this setvariable ['owner', _this select 0];"];
unassignCurator Toni_Zeus;
player assignCurator Toni_Zeus;
removeallcuratoraddons Toni_Zeus;
Toni_Zeus addcuratoraddons addons;
Toni_Zeus setCuratorWaypointCost 0;
Toni_Zeus setCuratorCoef ["Place", true];
Toni_Zeus setCuratorCoef ["Edit", true];
Toni_Zeus setCuratorCoef ["Delete", true];
Toni_Zeus setCuratorCoef ["Destroy", true];
Toni_Zeus setCuratorCoef ["Group", true];
Toni_Zeus setCuratorCoef ["Sychronize", true];
addons = [""];
_cfgPatches = configfile >> "cfgpatches";
for "_i" from 0 to (count _cfgPatches - 1) do {
_class = _cfgPatches select _i;
if (isclass _class) then {addons pushBack (configname _class);};
};
addons call bis_fnc_activateaddons;
};


[[getplayeruid player], Toni_makezeus] spawn {_this remoteExec ["call", 2]};