_cfgvehicles = configFile >> "cfgVehicles";
for "_i" from 0 to (count _cfgvehicles)-1 do 
{
    _vehicle = _cfgvehicles select _i;
    if (isClass _vehicle) then 
    {
        _veh_type = configName(_vehicle);
        if ((getNumber(_vehicle >> "scope")==2) && (_veh_type isKindOf 'Air')) then 
        {
            _displayName = getText(_vehicle >> 'displayName');
            airvehclass_array pushback _veh_type;
            airvehname_array pushback format ["%1 ---- (%2)", _displayName, _veh_type];
        };        
        
        if ((getNumber(_vehicle >> "scope")==2) && (_veh_type isKindOf 'LandVehicle')) then 
        {
            _displayName = getText(_vehicle >> 'displayName');
            Landvehclass_array pushback _veh_type;
            Landvehname_array pushback format ["%1 ---- (%2)", _displayName, _veh_type];
        };        
        
        if ((getNumber(_vehicle >> "scope")==2) && (_veh_type isKindOf 'Ship')) then 
        {
            _displayName = getText(_vehicle >> 'displayName');
            Shipclass_array pushback _veh_type;
            Shipname_array pushback format ["%1 ---- (%2)", _displayName, _veh_type];
        };
	};
};
vehiclenamearrays = airvehname_array + Landvehname_array + Shipname_array;
vehicleclassarrays = airvehclass_array + Landvehclass_array + Shipclass_array;