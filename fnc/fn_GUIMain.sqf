private["_display","_list"];
disableSerialization;
_display = (findDisplay 2686);
_debugbox =  _display displayctrl 1999;
_playerlist = _display displayCtrl 1501;
_scriptlist = _display displayCtrl 1700;
_consoleexpression = profileNamespace getVariable "rscdebugconsole_expression";
_debugbox ctrlsettext format ["%1",_consoleexpression];

lbClear _playerlist;
{
	_playerlist lbAdd format["%1", name _x];
	_playerlist lbSetdata [(lbSize _playerlist)-1,str(_x)];
} foreach allplayers;

_scriptlistarray = 
[
"Heal Yourself",
"Fill Current Weapon",
"Godmode - ON",
"Godmode - OFF",
"Unlimited Ammo - ON",
"Unlimited Ammo - OFF",
"Cloaking Device (ON)",
"Cloaking Device (OFF)",
"Money Gun - ON",
"Money Gun - OFF",
"AA Missile Bullets (ON)",
"AA Missile Bullets (OFF)",
"Change Airstrike Type (LShift + ~)",
"Revive Player @ Cursortarget (Alits Life)",
"Revive Yourself (Alits Life)",
"Revive Yourself (Invade & Annex)",
"Teleport Player Here",
"Teleport To Player",
"Teleport All Players Here",
"Give Money (Randomized Amount)",
"Spawn Money Pile (Local)",
"Spawn AI Unit",
"Become CAS",
"Enable Zeus",
"Request UAV Support",
"Toggle ESP",
"Kick Selected Player",
"Ban Selected Player",
"Kill Everyone",
"Eliminate Selected Player"
];

switch (Toni_Var_Guimode) do
{
    case 1: 
    {
        lbclear _scriptlist;
        {
            _scriptlist lbAdd _x;
        }foreach _scriptlistarray;
    };
    
    case 2:
    {
        lbclear _scriptlist;
        {
            _scriptlist lbAdd format['%1',_x];
        } forEach vehiclenamearrays; 
    };
    
    case 3:
    {
        lbclear _scriptlist;
        {
            _scriptlist lbAdd _x
        }foreach wepname_array;
    };
    
    case 4: 
    {
        lbclear _scriptlist;
        _scriptlist lbAdd "NOT IMPLEMENTED YET!";
    };

};


[] spawn {
    while{true} do 
    {
        waitUntil{!isNull (findDisplay 2686)};    
        ((findDisplay 2686) displayCtrl 1603) ctrlShow false;
        ((findDisplay 2686) displayCtrl 1401) ctrlShow false;
        ((findDisplay 2686) displayCtrl 1402) ctrlShow false;
        ((findDisplay 2686) displayCtrl 1403) ctrlShow false;
        ((findDisplay 2686) displayCtrl 1404) ctrlShow false;
        ((findDisplay 2686) displayCtrl 1405) ctrlShow false;
        ((findDisplay 2686) displayCtrl 1406) ctrlShow false;
        waitUntil{isNull (findDisplay 2686)}
    };
};