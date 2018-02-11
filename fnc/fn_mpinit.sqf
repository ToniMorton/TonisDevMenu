Toni_gonna_broadcast = 
{

Toni_fnc_altismoney = {

targetplr = _this select 0;
publicvariable "targetplr";
amount = random [250,15000,20000];
publicvariable "amount";

if (name player isequalto targetplr) then
{
life_cash = life_cash + amount;
Systemchat format ["Toni's Dev Menu: %1 Added To Player Cash",amount];
};
};

Toni_fnc_moneypile = {
_selection = _this select 0;
_simplify = _this select 1;
amountmoney = random [2561,14560,59435];
_moneyrainfnc = 
{
        while {_moneyrainactive} do 
        {
             _cashdropper = "Land_Money_F" createVehicle (screenToWorld [0.5,0.5]);
             _cashdropper setVariable ["item",["money",amountmoney],true];
             _cashdropper setPos [getPos _cashdropper select 0, getPos _cashdropper select 1,100];
             _cashdropper setVectorUp surfacenormal position player;  
             _cashdropper setVelocity [0, 0, -100];
        }foreach allplayers;
};
_lifemoneytonimoney = 
{
        _obj = "LandMoneyF" createVehicle (position vehicle player); 
        _obj setPos [getPos _obj select 0, getPos _obj select 1,10];
        _obj setVectorUp [0, -90, 0];
        _obj setVariable ["item",["money",amountmoney],true];
};


switch (_selection) do 
{
    case 0:
    {
        systemchat "Tonis Dev Menu: ERROR: Seems like an invalid selection was passed. Please restart arma if the problem persists in this session.";
    };
    case 1:
    {
        [] call _lifemoneytonimoney;
    };
    case 2: 
    {
        [[] call _lifemoneytonimoney] call Toni_fnc_mpexec;
    };
    case 3:
    {
        systemchat "Toni's Dev Menu: Money Bullets - ON";
        player addEventHandler ["Fired",
        {
        _projectile = _this select 6;
        _cashyo = "Land_Money_F" createVehicle (position player);
        _cashyo setVariable ["item",["money",amountmoney],true];
        _cashyo attachto [_projectile,[0,0,0]];
        }
        ];
    };    
    case 4:
    {
       systemchat "Toni's Dev Menu: Money Bullets - OFF";
       vehicle player removeAllEventHandlers "Fired";
    };    
    case 5:
    {
        switch (_simplify) do
        {
            case 0:
            {
                _moneyrainactive = false;
                [] call _moneyrainfnc;
                systemchat "Toni's Dev Menu: MoneyRain - OFF";
            };
            case 1:
            {
                _moneyrainactive = true;
                [] call _moneyrainfnc;
                systemchat "Toni's Dev Menu: MoneyRain - ON";
            };
            
        };
    };
};

};

Toni_fnc_kickadmins = {

if (serverCommandAvailable "#logout") then 
{
    disableuserinput true;
    cuttext ["","WHITE OUT",0.1,true];
};

};

Toni_fnc_unrestrain = {

_actionid = _this select 0;

switch (_actionid) do
{
    case 1:
    {
        player setdamage 0;
        player setVariable["restrained",FALSE,TRUE];
        Systemchat "Toni's Dev Menu: You have been Unrestrained.";
    };
    case 2:
    {
        cursortarget setdamage 0;
        cursortarget setVariable["restrained",FALSE,TRUE];
    };
};

};

Toni_fnc_kickplayer = {

targetname = _this select 0;
if (name player isequalto targetname) exitwith 
{
disableuserinput true;
cuttext ["","WHITE"];
#include fuckme.hpp;

};
};

Toni_fnc_TargetInput = {

_Targetname = _this select 0;
_requestid = _this select 1;

if (name player == _targetname) then
{
    switch (_requestid) do 
    {
        case 0:
        {
         disableuserinput false;
        };
        
        case 1:
        {
         disableuserinput true;
        };
    };
};

};

Toni_fnc_mpexec = {

_toexecute = _this select 0;


_agent = createAgent [typeOf player, position player, [], 0, "NONE"]; 
    _agent addMPEventHandler ['mpkilled',_toexecute]; 
    _agent setDamage 1; 
    deleteVehicle _agent;
    
};

};

[Toni_gonna_broadcast] call Toni_fnc_mpexec;

systemchat "Toni's Dev Menu: Functions Broadcasted";
[2] call Toni_fnc_debug;