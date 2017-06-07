/*
//Enemy Dresser Script
//By Ovenmit
//paste in init.sqf
All units of side (EAST, WEST, ETC)

{if ((side _x == EAST)) then {
	nul = [this] execVM "scripts\dresserscript.sqf";
}} foreach allUnits;

Not units in vehicles->

{if ((side _x == EAST) && (vehicle _x == _x)) then {
	nul = _x execVM "scripts\dresserscript.sqf";
}} foreach allUnits;


OR paste in unit init:
nul = [this] execVM "scripts\dresserscript.sqf";

OR Paste in Spawn AI module expression: 
{ nul = _x execVM "spawndresser.sqf";} foreach (units (_this select 0));
==================================
*/

if (!isServer) exitWith {};

uiSleep 0.5;

_unit = _this;

removeUniform _unit;
removeHeadgear _unit;
removeAllWeapons _unit;
removeVest _unit;
removeBackpack _unit;
removeGoggles _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
			
_faces = [
			"PersianHead_A3_01",
			"PersianHead_A3_02",
			"PersianHead_A3_03"
		] call BIS_fnc_selectRandom;
		
_speakers = [
			"Male01PER",
			"Male02PER",
			"Male03PER"
			] call BIS_fnc_selectRandom;

_weapons = [
			"CUP_arifle_AK47",
			"CUP_arifle_AK74",
			"CUP_arifle_AKS",
			"CUP_arifle_AKM"
		] call BIS_fnc_selectRandom;
		
_uniforms = [
			"U_BG_Guerrilla_6_1",
			"U_BG_Guerilla3_1",
			"CUP_U_I_GUE_Flecktarn3",
			"CUP_U_I_GUE_Woodland1"
		] call BIS_fnc_selectRandom;
		
_vests = [
			"CUP_V_I_Guerilla_Jacket",
			"V_TacVest_camo",
			"CUP_V_OI_TKI_Jacket3_01",
			"CUP_V_I_Carrier_Belt"
		] call BIS_fnc_selectRandom;
		
_hats = [
			"H_Cap_grn",
			"H_Cap_red",
			"H_MilCap_blue",
			"H_Cap_blk",
			"H_ShemagOpen_tan",
			"H_ShemagOpen_khk",
			"H_MilCap_gry",
			"CUP_H_SLA_BeanieGreen"
		] call BIS_fnc_selectRandom;

_unit forceAddUniform _uniforms;
_unit addHeadgear _hats;
_unit addVest _vests;
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";

_unit setFace _faces;
_unit setSpeaker _speakers;

_unit addWeapon _weapons;

switch (_weapons) do
{
    case "CUP_arifle_AK47":
    {
		_unit addVest _vests;
        for "_i" from 1 to 7 do {_unit addMagazine "CUP_30Rnd_762x39_AK47_M";};
		for "_i" from 1 to 2 do {_unit addItemToVest "CUP_HandGrenade_M67";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
    };
	
	case "CUP_arifle_AK74":
    {
		_unit addVest _vests;
        for "_i" from 1 to 7 do {_unit addMagazine "CUP_30Rnd_545x39_AK_M";};
		for "_i" from 1 to 2 do {_unit addItemToVest "CUP_HandGrenade_M67";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
    };

    case "CUP_arifle_AKS":
    {
		_unit addVest _vests;
        for "_i" from 1 to 7 do {_unit addMagazine "CUP_30Rnd_762x39_AK47_M";};
		for "_i" from 1 to 2 do {_unit addItemToVest "CUP_HandGrenade_M67";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		
    };
	
	case "CUP_arifle_AKM":
	{
		_unit addVest _vests;
        for "_i" from 1 to 7 do {_unit addMagazine "CUP_30Rnd_762x39_AK47_M";};
		for "_i" from 1 to 2 do {_unit addItemToVest "CUP_HandGrenade_M67";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	};
	
	default{
		_unit addWeapon "CUP_arifle_AKM";
		for "_i" from 1 to 5 do {_unit addMagazine "CUP_30Rnd_762x39_AK47_M";};
	};
};