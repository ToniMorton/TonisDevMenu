_case = _this select 0;
_selectedplayer = _this select 1;

switch (_case) do
{
    case 1:
    {
        Toni_var_mpsvpassword serverCommand format ["#kick %1",_selectedplayer];
    };

    case 2:
    {
        Toni_var_mpsvpassword serverCommand format ["#exec ban %1",_selectedplayer];
    };
    
};