_case = _this select 0;
_plrname _this select 1;

switch (_case) do 
{
    case 1:
    {
        [name player] remoteExecCall ["life_fnc_revived",cursorTarget];
    };
    case 2: 
    {
            if (name _x == _plrname) then
            {
                _injured = _x;
                _injured setVariable ["BTC_need_revive",0,true];
                _injured playMoveNow "AinjPpneMstpSnonWrflDnon_rolltoback";
            };
            ["Target Revived"] call Toni_fnc_structuredhint;
    };    
    case 3: 
    {

                _injured = player;
                _injured setVariable ["BTC_need_revive",0,true];
                _injured playMoveNow "AinjPpneMstpSnonWrflDnon_rolltoback";
                ["You have been revived"] call Toni_fnc_structuredhint;
    };    
    case 4: 
    {
        [name player] remoteExecCall ["life_fnc_revived",player];
    };

};

