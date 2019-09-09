/*
//Enemy Dresser Script
//By Ovenmit
//paste in init.sqf
All units of side (EAST, WEST, civilian, resistance)

{if (side _x == EAST) then { 
 nul = [_x] execVM "scripts\dresserscript.sqf"; 
}} foreach allUnits;

Not units in vehicles->

{if ((side _x == EAST) && (vehicle _x == _x)) then {
	nul = _x execVM "scripts\dresserscript.sqf";
}} foreach allUnits;


OR paste in unit init:
nul = [this] execVM "scripts\dresserscript.sqf";

OR Paste in Spawn AI module expression: 
{ nul = _x execVM "scripts\dresserscript.sqf";} foreach (units (_this select 0));

OR in trigger on activation field:
{nul = [_x] execVM "scripts\dresserscript.sqf"} foreach thislist;
==================================
*/

if (!isServer) exitWith {};

uiSleep 0.5;

_unit = _this select 0;

removeUniform _unit;
removeHeadgear _unit;
			
_uniforms = selectRandom [
	"CUP_U_B_US_BDU",
	"CUP_U_B_US_BDU_roll2_glove",
	"CUP_U_B_US_BDU_roll2",
	"CUP_U_B_US_BDU_roll",
	"CUP_U_B_US_BDU_roll_glove"
];
		
_hats = selectRandom [
	"CUP_H_FR_PRR_BoonieWDL",
	"CUP_H_PMC_Cap_PRR_Grey",
	"CUP_H_PMC_Cap_PRR_Tan",
	"CUP_H_US_H_PASGT_WDL",
	"CUP_H_USArmy_Helmet_Pro",
	"CUP_H_USArmy_Helmet_Pro_gog",
	"CUP_H_PMC_PRR_Headset",
	"CUP_H_BAF_PARA_PRROVER_BERET",
	"CUP_H_BAF_PARA_PRRUNDER_BERET",
	"CUP_H_PMC_Cap_Back_PRR_Grey",
	"CUP_H_PMC_Cap_Back_PRR_Tan",
	"CUP_H_BAF_DPM_Mk6_GLASS_PRR",
	"CUP_H_BAF_DPM_Mk6_GOGGLES_PRR",
	"CUP_H_BAF_DPM_Mk6_NETTING_PRR"
];

_unit forceAddUniform _uniforms;
_unit addHeadgear _hats;

_unit addItemToUniform "ACE_tourniquet";
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
_unit addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_CableTie";};

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";

};