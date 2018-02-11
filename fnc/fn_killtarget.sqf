_targetname = _this select 0;

{
if (name _x == _targetname) then
{
[_x] call Toni_fnc_neutralizetarget;
};
}forEach allPlayers;
