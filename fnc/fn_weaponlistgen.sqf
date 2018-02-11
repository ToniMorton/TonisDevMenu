wepclass_array = [];
wepname_array = [];

_cfgweapons = configFile >> "cfgWeapons";
for "_i" from 0 to (count _cfgweapons)-1 do 
{
    _weapon = _cfgweapons select _i;
    if (isClass _weapon) then 
    {
        _wep_type = configName(_weapon);
        if ((_wep_type isKindOf ['Rifle', _cfgweapons]) || (_wep_type isKindOf ['Pistol',_cfgweapons]) || (_wep_type isKindOf ['Launcher',_cfgweapons]) || (_wep_type isKindOf ['Grenade',_cfgweapons]) || (_wep_type isKindOf ['misc',_cfgweapons])) then 
        {
            _displayName = getText(_weapon >> 'displayName');
            wepclass_array pushback _wep_type;
            wepname_array pushback format ["%1 -- (%2)",_displayName, _wep_type];
        };
	};
};


magclass_array = [];
magname_array = [];
_cfgmagazines = configFile >> "cfgMagazines";
_parents = [_cfgmagazines, true] call BIS_fnc_returnParents;
for "_i" from 0 to (count _cfgmagazines)-1 do 
{
    _magazine = _cfgmagazines select _i;
    if (isClass _magazine) then 
    {
       if (getNumber(_magazine >> "scope")== 2) then
       {
            _mag_type = configName(_magazine);
            _displayNamemag = getText(_magazine >> 'displayName');  
            magclass_array pushback _mag_type;
            magname_array pushback format ["%1 -- (%2)",_displayNamemag, _mag_type];
       };
	};
};


wepclass_array = wepclass_array + magclass_array;
wepname_array = wepname_array + magname_array;