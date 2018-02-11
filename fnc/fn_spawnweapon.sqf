_arrayid = _this select 0;
_weapon = wepclass_array select _arrayid;
_unit = player;
_weaponExists = isClass (configFile >> "CfgWeapons" >> _weapon);
_magExists = isClass (configFile >> "CfgMagazines" >> _weapon);
_weaponmags = getarray (configFile >> "CfgWeapons" >> _weapon >> "magazines");


if (_weaponExists) then 
{
        _unit addweapon _weapon;
        _unit addmagazine (_weaponmags select 0);
        _unit addmagazine (_weaponmags select 0);
        _unit addmagazine (_weaponmags select 0);
        _unit addmagazine (_weaponmags select 0);
        _unit addmagazine (_weaponmags select 0);
        _unit addmagazine (_weaponmags select 0);
}
else
{
    if (_magExists) then
    {
        _unit addmagazine _weapon;
    };
};