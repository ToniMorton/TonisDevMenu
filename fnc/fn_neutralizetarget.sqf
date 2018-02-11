_object = _this param [0,objnull,[objnull]];
_object = vehicle _object;
 
if !(alive _object) exitwith {false};
if (underwater _object) exitwith {_object setdamage 1; true};
 
_objectArray = _object call bis_fnc_objectType;
_objectCategory = _objectArray select 0;
_objectType = _objectArray select 1;
 
switch _objectCategory do {
    case "Soldier": {
    
        _pos = [position _object,[velocity _object,0.75] call bis_fnc_vectorMultiply] call bis_fnc_vectorAdd;
        _mine = createmine ["APERSBoundingMine",[10,10,10],[],0];
        _mine setpos _pos;
        _mine setdamage 1;
        _object sideradio "SentDetectedMine";
        [_object,_mine] spawn {
            _object = _this select 0;
            _mine = _this select 1;
            waituntil {isnull _mine};
            _object setdamage 1;
        };
    };
    case "Vehicle": {
        switch _objectType do {
            case "Plane";
            case "Helicopter": {
 
                _pos = [_object,500,direction _object - 45 + random 90] call bis_fnc_relpos;
                _pos set [2,(getposatl _object select 2) max 50];
                _aa = createvehicle ["I_static_AA_F",_pos,[],300,"none"];
                _aaCrew = createagent ["i_soldier_f",_pos,[],0,"none"];
                _aaCrew moveingunner _aa;
                _aa hideobject true;
                _aa setpos _pos;
                _aa setdir ([_aa,_object] call bis_fnc_dirto);
                _aa setvariable ["object",_object];
                _aa addeventhandler [
                    "fired",
                    {
                        _this spawn {
                            _aa = _this select 0;
                            _missile = _this select 6;
                            _object = _aa getvariable ["object",objnull];
                            {moveout _x; deletevehicle _x} foreach crew _aa;
                            deletevehicle _aa;
 
                            waituntil {isnull _missile};
                            _object setdamage 1;
                        };
                    }
                ];
                _aa fireattarget [_object,"missiles_titan_static"];
            };
 
            default {
 
                _shell = createagent ["ModuleOrdnanceHowitzer_F",position _object,[],0,"none"];
                _shell setvariable ["altitude",650];
                _shell setvariable ["radio",""];
                _shell attachto [_object];
                [_object,_shell] spawn {
                    _object = _this select 0;
                    _shell = _this select 1;
                    waituntil {isnull _shell};
                    _object setdamage 1;
                };
            };
        };
    };
    default {
        _object setdamage 1
    };
};
true