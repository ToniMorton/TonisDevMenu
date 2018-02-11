_switchbool = _this select 0;
_data0 = _this select 1;
_data1 = _this select 2;
_data2 = _this select 3;
_data3 = _this select 4;
_data4 = _this select 5;
_data5 = _this select 6;

if (!_switchbool) then 
{
    switch (Toni_Var_Guimode) do 
    {
        case 1: 
        {
            [_data0, _data1] call Toni_fnc_runscript;
        };  
        
        case 2:
        {
            [_data1] call Toni_fnc_spawnvehicle;
        };
        
        case 3:
        {
            [_data1] call Toni_fnc_spawnweapon;
        };

    };
}
else
{
    switch (_data0) do 
    {
        case 1: 
        {
            Toni_Var_Guimode = 1;
            [] spawn Toni_fnc_GUIMain;
        };
    
        case 2:
        {
            Toni_Var_Guimode = 2;
            [] spawn Toni_fnc_GUIMain;
        };
    
        case 3:
        {
            Toni_Var_Guimode = 3;
            [] spawn Toni_fnc_GUIMain;
        };
    
        case 4: 
        {
            Toni_Var_Guimode = 4;
            [] spawn Toni_fnc_GUIMain;
        };

    };
};