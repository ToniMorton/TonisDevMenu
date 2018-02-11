amountmoney = random [2561,14560,59435];
_shouldichange = false;
_shouldichange = _this select 0;
_dropbomb = _this select 1;

if (_shouldichange) then 
{
Rainobj = Rainobj + 1;
    if (Rainobj > 7) then 
    {
        Rainobj = 1;
    };
_shouldichange = false;
};

switch (Rainobj) do 
{
    case 1:
    {
        if (_dropbomb) then 
        {
            _expl1 = "Bo_GBU12_LGB_MI10" createVehicle (screenToWorld [0.5,0.5]); 
            _expl1 setPos [getPos _expl1 select 0, getPos _expl1 select 1,400]; 
            _expl1 setVectorUp [0, -90, -1];
            _expl1 setVelocity [0, 0, -10];
        }
        else
        {
            Hint "Airstrike type now 'GBU-12'";
        };
    };    
    case 2:
    {
        if (_dropbomb) then 
        {
            _expl1 = "Land_Money_F" createVehicle (screenToWorld [0.5,0.5]); 
            _expl1 setPos [getPos _expl1 select 0, getPos _expl1 select 1,400]; 
            _expl1 setVectorUp [0, -90, -1];
            _expl1 setVelocity [0, 0, -10];
            _expl1 setVariable ["item",["money",amountmoney],true];
        }
        else
        {
            Hint "Airstrike type now 'Money'";
        };    
    };    
    case 3:
    {
        if (_dropbomb) then 
        {
        _expl1 = "Sh_82mm_AMOS" createVehicle (screenToWorld [0.5,0.5]); 
        _expl1 setPos [getPos _expl1 select 0, getPos _expl1 select 1,400]; 
        _expl1 setVectorUp [0, -90, -1];
        _expl1 setVelocity [0, 0, -10];
        }
        else
        {
        Hint "Airstrike type now '82 MM Mortar'";
        };
    };    
    case 4:
    {
        if(_dropbomb) then
        {
            _expl1 = "Cluster_155mm_AMOS" createVehicle (screenToWorld [0.5,0.5]); 
            _expl1 setPos [getPos _expl1 select 0, getPos _expl1 select 1,400]; 
            _expl1 setVectorUp [0, -90, -1];
            _expl1 setVelocity [0, 0, -10];
        }
        else
        {
            Hint "Airstrike type now '155 MM Mortar (Cluster)'";
        };
    };    
    case 5:
    {
        if(_dropbomb) then
        {
            _expl1 = "M_Titan_AT" createVehicle (screenToWorld [0.5,0.5]); 
            _expl1 setPos [getPos _expl1 select 0, getPos _expl1 select 1,1500]; 
            _expl1 setVectorUp [0, -90, -1];
            _expl1 setVelocity [0, 0, -800];
        }
        else
        {
            Hint "Airstrike type now 'Titan AT Missile'";
        };
    };    
    case 6:
    {
        if(_dropbomb) then
        {
            _expl1 = "M_jian_AT" createVehicle (screenToWorld [0.5,0.5]); 
            _expl1 setPos [getPos _expl1 select 0, getPos _expl1 select 1,1000]; 
            _expl1 setVectorUp [0, -90, -1];
            _expl1 setVelocity [0, 0, -780];
        }
        else
        {
            Hint "Airstrike type now 'Jian AGM Missile'";
        };
    };    
    case 7:
    {
        if(_dropbomb) then
        {
            _expl1 = "rhs_ammo_kh55sh" createVehicle (screenToWorld [0.5,0.5]); 
            _expl1 setPos [getPos _expl1 select 0, getPos _expl1 select 1,2000]; 
            _expl1 setVectorUp [0, -90, -1];
            _expl1 setVelocity [0, 0, -500];
        }
        else
        {
            Hint "Airstrike type now 'KH-55SH'";
        };
    };
};