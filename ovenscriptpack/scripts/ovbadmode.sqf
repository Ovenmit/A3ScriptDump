/*
mission init: 
All units of side (EAST, WEST, ETC)

{if (side _x == EAST) then { 
 nul = [_x,"<MODE>"] execVM "scripts\ovsafemode.sqf"; 
}} foreach allUnits;

{if (side _x == EAST || side _x == civilian || side _x == resistance ) then {  
  nul = [_x,"<MODE>"] execVM "scripts\ovsafemode.sqf"; 
 }else { 
  nul = [_x,"<MODE>"] execVM "scripts\ovsafemode.sqf"; 
 }} foreach allunits;

OR unit init:
nul = [this,"<MODE>"] execVM "scripts\ovsafemode.sqf";

OR Paste in Spawn AI module expression: 
{ nul = [_x,"<MODE>"] execVM "scripts\ovsafemode.sqf";} foreach (units (_this select 0));

OR in trigger on activation field:
{nul = [_x,"<MODE>"] execVM "scripts\ovsafemode.sqf"} foreach thislist;

{if (side _x == EAST) then { 
 nul = [_x,"<MODE>"] execVM "scripts\ovsafemode.sqf"; 
}} foreach thislist;

Options:
cold
hot
*/

if (!isServer) exitWith {};

_unit = _this select 0;
uiSleep 0.5;

//set mode
		_unit setCaptive false; 
		_unit setBehaviour "COMBAT"; 
		_unit setCombatMode "RED";
		
		//hide gun
		//_unit removeWeapon (primaryWeapon this); 
		//_unit action ['SwitchWeapon', _unit, _unit, 100];}; 
		
		hint "AI is HOT!";


