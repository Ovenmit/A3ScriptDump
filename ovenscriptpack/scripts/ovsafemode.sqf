/*
mission init: 
All units of side (EAST, WEST, ETC)
{if (side _x == EAST) then { 
 nul = [_x,"<MODE>"] execVM "scripts\ovsafemode.sqf"; 
}} foreach allUnits;

Then in trigger activation:
{if (side _x == resistance) then { 
 nul = [_x,"<MODE>"] execVM "scripts\ovsafemode.sqf"; 
}} foreach thislist;

Options:
cold
hot
*/

if (!isServer) exitWith {};

_unit = _this select 0;
_umode = _this select 1;

uiSleep 0.5;

removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit linkItem "ItemWatch";

switch (_umode) do
{
	case "cold":
	{
		//set mode
		[_unit] joinSilent createGroup resistance;
		_unit setBehaviour "CARELESS"; 
		_unit setCombatMode "GREEN";
		hint "AI is SAFE!";
	};
	
	case "hot":
	{	
		/*
		//arm
		_weapons = selectRandom [
			"hlc_rifle_akm",
			"CUP_hgun_Makarov",
			"CUP_hgun_Colt1911",
			"CUP_hgun_SA61",
			"CUP_hgun_M9"
		];
		
		_unit addWeapon _weapons;
		switch (_weapons) do
		{
			case "hlc_rifle_akm":
			{
				for "_i" from 1 to 2 do {_unit addItemToUniform "hlc_30Rnd_762x39_b_ak";};
			};
			
			case "CUP_hgun_Makarov":
			{
				for "_i" from 1 to 4 do {_unit addItemToUniform "CUP_8Rnd_9x18_Makarov_M";};
			};
			
			case "CUP_hgun_Colt1911":
			{
				for "_i" from 1 to 4 do {_unit addItemToUniform "CUP_7Rnd_45ACP_1911";};
			};
			
			case "CUP_hgun_M9":
			{
				for "_i" from 1 to 4 do {_unit addItemToUniform "CUP_15Rnd_9x19_M9";};
			};

			case "CUP_hgun_SA61":
			{
				for "_i" from 1 to 3 do {_unit addMagazine "CUP_20Rnd_B_765x17_Ball_M";};
			};
			
			default{
				
			};
		};
		*/
		
		//set mode
		[_unit] joinSilent createGroup opfor;
		_unit setBehaviour "DANGER"; 
		_unit setCombatMode "RED";
		hint "AI is HOT!";
	};	

	default
	{
		hint "error!";
	};
};


