class CfgPatches
{
	class Toni_Menu
	{
		weapons[] = {};
		requiredVersion = 5.0;
		author[] = {"Toni Morton"};
		authorUrl = "http://steamcommunity.com/id/ToniMorton/";
		version = 5.0;
        units[] = {};
		requiredAddons[] = {};
	};
};

class CfgFunctions
{
  #include "CfgFunctions.hpp"
};

#include "Dialogs\Defines.hpp"
#include "Dialogs\MainGUI.hpp"
#include "BIS_addoninfo.hpp"

class RscDisplayInventory
{
	class Controls
	{
            class Toni_GUI_LoadDev: RscButton
            {
               idc = 1797;
               text = "Load Toni's Dev Menu"; //--- ToDo: Localize;
               x = -2.5 * GUI_GRID_W + GUI_GRID_X;
               y = -0.5 * GUI_GRID_H + GUI_GRID_Y;
               w = 14 * GUI_GRID_W;
               h = 1 * GUI_GRID_H;
               tooltip = "This Button Begins The loading process of Toni's Dev Menu"; //--- ToDo: Localize;
               action = "[] Spawn Toni_fnc_init;";
            };
    };
};