_invldselect = 
{
    Systemchat "Toni's Dev Menu: Invalid Selection";
};
_playername = _this select 0;
_sendername = name player;
_senderpos = player modelToWorld [0,3.5,0];

switch (lbtext[1700,(lbCurSel 1700)]) do 
{
    case "Godmode - ON":
    {
        [1] call Toni_fnc_Godmode;
    };
    case "Godmode - OFF":
    {
        [0] call Toni_fnc_Godmode;
    };
    case "Unlimited Ammo - ON":
    {
        [1] call Toni_fnc_infammo;
    };
    case "Unlimited Ammo - OFF":
    {
        [0] call Toni_fnc_infammo;
    };
    case "Heal Yourself":
    {
        [] call Toni_fnc_healself;
    };
    case "Fill Current Weapon":
    {
        [] call Toni_fnc_fillammo;
    };      
    case "Spawn AI Unit":
    {
        [] call Toni_fnc_spawnai;
    };         
    case "Become CAS":
    {
        [] call Toni_fnc_cas;
    };            
    case "Request UAV Support":
    {
        [] call Toni_fnc_UAVSupport;
    };           
    case "Toggle ESP":
    {
        [] call Toni_fnc_esp;
    };     
    case "Kick Selected Player":
    {
        [1, _playername] call Toni_fnc_admin;
    };         
    case "Ban Selected Player":
    {
        [2, _playername] call Toni_fnc_admin;
    };        
    case "Cloaking Device (ON)":
    {
        ["ON"] call Toni_fnc_stealth;
    };    
    case "Cloaking Device (OFF)":
    {
        ["OFF"] call Toni_fnc_stealth;
    };    
    case "Change Airstrike Type (LShift + ~)":
    {
        [true, false] call Toni_fnc_Rainoverme;
    };    
    case "AA Missile Bullets (ON)":
    {
        ["ON"] call Toni_fnc_Missilelaunch;
        Systemchat "Toni's Dev Menu: Missile Bullets Enabled";       
    };    
    case "AA Missile Bullets (OFF)":
    {
        ["OFF"] call Toni_fnc_Missilelaunch;
        Systemchat "Toni's Dev Menu: Missile Bullets Disabled";  
    };    
    case "Teleport Player Here":
    {
        [_playername] call Toni_fnc_teleporthere;
        systemchat format ["Tonis Dev Menu: %1 Teleported To Your Location",_playername];
    };    
    case "Teleport To Player":
    {
        [_playername] call Toni_fnc_teleporttoplr;
        systemchat format ["Tonis Dev Menu: You Have Teleported To %1",_playername];
    };
    case "Give Money (Randomized Amount)":
    {
        [name player] call Toni_fnc_altismoney;
    };   
    case "Spawn Money Pile (Local)":
    {
        [1] call Toni_fnc_moneypile;
    };    
    case "Money Gun - ON":
    {
        [3] call Toni_fnc_moneypile;
    };    
    case "Money Gun - OFF":
    {
        [4] call Toni_fnc_moneypile;
    };
    case "Kill Everyone":
    {
        [] call Toni_fnc_killall;
    };    
    case "Teleport All Players Here":
    {
        [] call Toni_fnc_Teleporteveryone;
    }; 
    case "Eliminate Selected Player":
    {
        [_playername] call Toni_fnc_killtarget;
    };  
    case "Enable Zeus":
    {
        [] call Toni_fnc_zeus;
    }; 
    case "Revive Player @ Cursortarget (Alits Life)":
    {
        [1] call Toni_fnc_reviveplayer;
    };       
    case "Revive Yourself (Alits Life)":
    {
        [4] call Toni_fnc_reviveplayer;
    };    
    case "Revive Player @ Cursortarget (Invade & Annex)":
    {
        [2, _playername] call Toni_fnc_reviveplayer;
    };    
    case "Revive Yourself (Invade & Annex)":
    {
        [3, _playername] call Toni_fnc_reviveplayer;
    };
    case "":
    {
        [] call _invldselect;
    };    
};