_toggle = _this select 0;


switch _toggle do 
{

    case "ON":
    {
        player hideObjectglobal true;
    };
    
    case "OFF":
    {
        player hideObjectglobal false;
    };

};