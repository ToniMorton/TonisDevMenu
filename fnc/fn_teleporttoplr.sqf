_targetname = _this select 0;

{
if (name _x == _targetname) then
{
player setPos (getpos _x);
};
}forEach allplayers;