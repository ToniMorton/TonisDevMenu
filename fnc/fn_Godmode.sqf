switch (_this select 0) do 
{
    case 0:
    {
        If ((vehicle player) == player) then
        {
            player allowdamage true;
            Systemchat "Toni's Dev Menu: Godmode OFF";
        }
        else
        {
            vehicle player allowdamage true;
            Systemchat "Toni's Dev Menu: Vehicle Godmode OFF";
        };
    };
    case 1:
    {
        If ((vehicle player) == player) then
        {
            player allowdamage false;
            Systemchat "Toni's Dev Menu: Godmode ON";
        }
        else
        {
            vehicle player allowdamage false;
            Systemchat "Toni's Dev Menu: Vehicle Godmode ON";
        };
    };
};