class Toni_GUI_MainGUI {
	idd = 2686;
    style = 32;
    name = "Toni_GUI_MainGUI";
	movingEnable = 0;
    onload = "[] spawn Toni_fnc_GUIMain";
class controlsbackground {
    class Toni_GUI_Backpanel1: IGUIBack
    {
        idc = -1;
        x = -19 * GUI_GRID_W + GUI_GRID_X;
        y = 0 * GUI_GRID_H + GUI_GRID_Y;
        w = 78 * GUI_GRID_W;
        h = 28 * GUI_GRID_H;
        colorBackground[] = {0,0,0,0.5};
    };
};
class controls {

    class Toni_GUI_Footerbar: RscText
    {
        idc = 1001;
    
        text = "Copyright 2017-2018, Toni Morton"; //--- ToDo: Localize;
        x = -28.5 * GUI_GRID_W + GUI_GRID_X;
        y = 34 * GUI_GRID_H + GUI_GRID_Y;
        w = 97.5 * GUI_GRID_W;
        h = 1.5 * GUI_GRID_H;
        colorBackground[] = {0.5,0,0,1};
    };
    class Toni_GUI_Titlebar: RscText
    {
        idc = 1000;
    
        text = "Toni's Dev Menu: Version 6.0"; //--- ToDo: Localize;
        x = -28.5 * GUI_GRID_W + GUI_GRID_X;
        y = -10.5 * GUI_GRID_H + GUI_GRID_Y;
        w = 98 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorBackground[] = {0.5,0,0,1};
    };
    class Toni_GUI_Listbox: RscListBox
    {
        idc = 1700;
    
        x = -6.5 * GUI_GRID_W + GUI_GRID_X;
        y = -6 * GUI_GRID_H + GUI_GRID_Y;
        w = 41 * GUI_GRID_W;
        h = 34.5 * GUI_GRID_H;
        colorBackground[] = {0,0,0,0.4};
    };
    class Toni_GUI_Namelist: RscListBox
    {
        idc = 1501;
    
        x = -27.5 * GUI_GRID_W + GUI_GRID_X;
        y = -8 * GUI_GRID_H + GUI_GRID_Y;
        w = 13 * GUI_GRID_W;
        h = 36.5 * GUI_GRID_H;
        colorBackground[] = {0,0,0,0.4};
    };
    class Toni_GUI_Scriptlistbutton: RscButton
    {
        idc = 1600;
        action = "[true,1] call Toni_fnc_Execute";
    
        text = "Script List"; //--- ToDo: Localize;
        x = -6.5 * GUI_GRID_W + GUI_GRID_X;
        y = -8 * GUI_GRID_H + GUI_GRID_Y;
        w = 9.5 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
    };
    class Toni_GUI_Vehiclelistbutton: RscButton
    {
        idc = 1601;
        action = "[true,2] call Toni_fnc_Execute";
    
        text = "Vehicle List"; //--- ToDo: Localize;
        x = 4 * GUI_GRID_W + GUI_GRID_X;
        y = -8 * GUI_GRID_H + GUI_GRID_Y;
        w = 9.5 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
    };
    class Toni_GUI_Weapons: RscButton
    {
        idc = 1602;
        action = "[true,3] call Toni_fnc_Execute";
    
        text = "Weapons"; //--- ToDo: Localize;
        x = 14.5 * GUI_GRID_W + GUI_GRID_X;
        y = -8 * GUI_GRID_H + GUI_GRID_Y;
        w = 9.5 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
    };
    class Toni_GUI_ClothesButton: RscButton
    {
        idc = 1603;
        action = "[true,4] call Toni_fnc_Execute";
    
        text = "Clothes"; //--- ToDo: Localize;
        x = 25 * GUI_GRID_W + GUI_GRID_X;
        y = -8 * GUI_GRID_H + GUI_GRID_Y;
        w = 9.5 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
    };
    class Toni_GUI_Closebutton: RscButtonMenuCancel
    {
        text = "X"; //--- ToDo: Localize;
        x = 66.5 * GUI_GRID_W + GUI_GRID_X;
        y = -10.5 * GUI_GRID_H + GUI_GRID_Y;
        w = 2 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorText[] = {1,1,1,1};
        colorBackground[] = {0,0,0,0.8};
    };
    class Toni_GUI_ArsenalButton: RscButtonMenuOK
    {
        action = "['Open',true] spawn BIS_fnc_arsenal";
    
        text = "Open Arsenal"; //--- ToDo: Localize;
        x = 38 * GUI_GRID_W + GUI_GRID_X;
        y = -3 * GUI_GRID_H + GUI_GRID_Y;
        w = 11 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorText[] = {1,1,1,1};
        colorBackground[] = {0,0,0,0.8};
    };
    class Toni_GUI_OpenCameraButton: RscButtonMenuOK
    {
        action = "[] call BIS_fnc_camera";
    
        text = "Open Splendid Cam"; //--- ToDo: Localize;
        x = 55.5 * GUI_GRID_W + GUI_GRID_X;
        y = -3 * GUI_GRID_H + GUI_GRID_Y;
        w = 11 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorText[] = {1,1,1,1};
        colorBackground[] = {0,0,0,0.8};
    };
    class Toni_GUI_Debugconsole: RscEdit
    {
        idc = 1999;
        autocomplete = "scripting";
    
        x = 38 * GUI_GRID_W + GUI_GRID_X;
        y = -1 * GUI_GRID_H + GUI_GRID_Y;
        w = 29 * GUI_GRID_W;
        h = 16 * GUI_GRID_H;
        colorBackground[] = {0,0,0,0.6};
    };
    class Toni_GUI_Debugfield1: RscEdit
    {
        idc = 1401;
    
        x = 38.5 * GUI_GRID_W + GUI_GRID_X;
        y = 21 * GUI_GRID_H + GUI_GRID_Y;
        w = 28.5 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorBackground[] = {0,0,0,1};
    };
    class Toni_GUI_Debugfield2: RscEdit
    {
        idc = 1402;
    
        x = 38.5 * GUI_GRID_W + GUI_GRID_X;
        y = 25 * GUI_GRID_H + GUI_GRID_Y;
        w = 28.5 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorBackground[] = {0,0,0,1};
    };
    class Toni_GUI_Debugfield3: RscEdit
    {
        idc = 1403;
    
        x = 38.5 * GUI_GRID_W + GUI_GRID_X;
        y = 29 * GUI_GRID_H + GUI_GRID_Y;
        w = 28.5 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorBackground[] = {0,0,0,1};
    };
    class Toni_GUI_Debugresult1: RscEdit
    {
        idc = 1404;
    
        x = 38.5 * GUI_GRID_W + GUI_GRID_X;
        y = 22 * GUI_GRID_H + GUI_GRID_Y;
        w = 28.5 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorBackground[] = {0,0,0,0.5};
    };
    class Toni_GUI_Debugresult2: RscEdit
    {
        idc = 1405;
    
        x = 38.5 * GUI_GRID_W + GUI_GRID_X;
        y = 26 * GUI_GRID_H + GUI_GRID_Y;
        w = 28.5 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorBackground[] = {0,0,0,0.5};
    };
    class Toni_GUI_Debugresult3: RscEdit
    {
        idc = 1406;
    
        x = 38.5 * GUI_GRID_W + GUI_GRID_X;
        y = 30 * GUI_GRID_H + GUI_GRID_Y;
        w = 28.5 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
        colorBackground[] = {0,0,0,0.5};
    };
    class Toni_GUI_ServerButton: RscButton
    {
        idc = 1604;
        action = "[2] spawn Toni_fnc_debugconsole";
    
        text = "Server Only"; //--- ToDo: Localize;
        x = 38 * GUI_GRID_W + GUI_GRID_X;
        y = 16 * GUI_GRID_H + GUI_GRID_Y;
        w = 9 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
    };
    class Toni_GUI_GlobalButton: RscButton
    {
        idc = 1605;
        action = "[1] spawn Toni_fnc_debugconsole";
    
        text = "Global"; //--- ToDo: Localize;
        x = 48 * GUI_GRID_W + GUI_GRID_X;
        y = 16 * GUI_GRID_H + GUI_GRID_Y;
        w = 9 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
    };
    class Toni_GUI_LocalButton: RscButton
    {
        idc = 1606;
        action = "[0] spawn Toni_fnc_debugconsole";
    
        text = "Local"; //--- ToDo: Localize;
        x = 58 * GUI_GRID_W + GUI_GRID_X;
        y = 16 * GUI_GRID_H + GUI_GRID_Y;
        w = 9 * GUI_GRID_W;
        h = 1 * GUI_GRID_H;
    };
    class Toni_GUI_ExecutescriptButton: RscButton
    {
        idc = 1607;
        action = "[false, lbtext[1501,(lbCurSel 1501)],lbCurSel 1501] call Toni_fnc_Execute";
    
        text = "Execute Selected"; //--- ToDo: Localize;
        x = -6.5 * GUI_GRID_W + GUI_GRID_X;
        y = 30 * GUI_GRID_H + GUI_GRID_Y;
        w = 41 * GUI_GRID_W;
        h = 1.5 * GUI_GRID_H;
    };
    };
};