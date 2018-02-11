/*
Title: Fn_Keys.sqf
Desc: This is a Keyhandler. Don't fuck with it.
Author: Toni Morton 
Last Edited: 11/12/2016 6:28 PM PST
*/
private ['_handled','_altkey','_shiftkey','_ctrlkey','_bleh'];
_bleh = _this select 0;
_keypress = _this select 1;
_shiftkey = _this select 2;
_ctrlkey = _this select 3;
_altkey = _this select 4;
_handled = false;


if (alive player) then
{
    switch (_keypress) do 
    {   
        //GUI Menu Key: F6
        case 0x40:
        {
                    closedialog 0;
                    createdialog "Toni_GUI_MainGUI";
                    _handled = true;
		};        
        //Heal player (or vehicle) : F3 Key        
        case 61:
        {
                    [] call Toni_fnc_healself;
                    _handled = true;
		};
        //Destroy/delete cursortarget: Del Key
        case 211:
        {
                if (_shiftkey) then {_handled = true;};
                if (_shiftkey) then 
                {
                    if (!(isNull cursortarget)) then
                    {
                        cursortarget setdamage 1;
                        ["Target Destroyed"] call Toni_fnc_structuredhint;
                    };
                    _handled = true;
                }
                else
                {
                    if (!(isNull cursorObject)) then
                    {
                        deletevehicle cursorObject;
                        ["Target Deleted"] call Toni_fnc_structuredhint;
                    };
                    _handled = true;
                };
		};          
        //Missile Strike: shift + ~ Key 
        case 0x29:
        {
                if (_shiftkey) then {_handled = true;};
                if (_shiftkey) then 
                {
                    [false, true] call Toni_fnc_Rainoverme;
                    _handled = true;
                };
		};     
        //Clone/Delete Gear Of cursortarget    
        case 0xD2:
        {
                if (_shiftkey) then {_handled = true;};
                if (_shiftkey) then
                {
                    removeAllWeapons cursorTarget;
                    removeAllItems cursorTarget;
                    removeBackpack cursorTarget;
                    removeUniform cursorTarget;
                    ["Target's Gear Deleted"] call Toni_fnc_structuredhint;
                    _handled = true;
                }
                else
                {
                    player setUnitLoadout (getUnitLoadout cursortarget);
                    ["Loadout Cloned Sucessfully"] call Toni_fnc_structuredhint;
                    _handled = true;
                };
		};
        //shift + 1 key : Unlocks CursorTarget, Ctrl + 1 locks.
        case 0x02:
        {
            if (_shiftkey) then
            {
                cursortarget lock 0;
                ["Vehicle Unlocked"] call Toni_fnc_structuredhint;
                _handled = true;
            };
            
            if (_ctrlkey) then
            {
                cursortarget lock 2;
                ["Vehicle Locked"] call Toni_fnc_structuredhint;
                _handled = true;
            };
        };    
        //Shift + 3 key : revive cursorTarget (Invde and annex)
        case 0x04:
        {
            if (_shiftkey) then
            {
              if (alive player) then
                {
                    [2] call Toni_fnc_reviveplayer; 
                };
            };
        };                       
        //Shift + 4 key : Attach CursorTarget To you.
        case 0x05:
        {   
            if (_shiftkey) then {_handled = true;};
            if (_shiftkey) then
            {
                cursortarget attachTo [player, [0, 0, 4]];
                ["Target Attached to your player"] call Toni_fnc_structuredhint;
                _handled = true;
            }
            else
            {
                {_x setpos (screenToWorld [0.5,0.5]); detach _x}foreach attachedobjects player; 
                ["Target detached from your player"] call Toni_fnc_structuredhint;
                _handled = true;
            };
        }; 
        
	};
};
_handled = true;

/*
https://community.bistudio.com/wiki/ListOfKeyCodes
*/