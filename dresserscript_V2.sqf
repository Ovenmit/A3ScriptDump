/*
//Enemy Dresser Script
//By Ovenmit
//paste in init.sqf
All units of side (EAST, WEST, ETC)

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
removeAllWeapons _unit;
removeVest _unit;
removeBackpack _unit;
removeGoggles _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
			
_faces = selectRandom [
		"TanoanHead_A3_03",
		"TanoanHead_A3_04",
		"AfricanHead_02",
		"AfricanHead_03",
		"TanoanHead_A3_07",
		"TanoanHead_A3_01",
		"TanoanHead_A3_06",
		"TanoanHead_A3_08",
		"AfricanHead_01"
		];
		
_speakers = selectRandom [
			"Male01PER",
			"Male02PER",
			"Male03PER"
			];

_weapons = selectRandom [
			"hlc_rifle_akm",
			"hlc_rifle_ak47",
			"hlc_rifle_FAL5000",
			"CUP_hgun_SA61",
			"hlc_rifle_g3a3"
		];
		
_uniforms = selectRandom [
			"U_I_C_Soldier_Para_2_F",
			"U_I_C_Soldier_Para_3_F",
			"U_I_C_Soldier_Para_5_F",
			"U_I_C_Soldier_Para_4_F",
			"U_I_C_Soldier_Para_1_F",
			"U_BG_Guerilla3_1",
			"U_C_HunterBody_grn"
		];
		
_vests = selectRandom [
			"CUP_V_I_Guerilla_Jacket",
			"V_TacVest_camo",
			"CUP_V_OI_TKI_Jacket3_01",
			"CUP_V_O_TK_Vest_1",
			"CUP_V_I_Carrier_Belt",
			"CUP_V_O_Ins_Carrier_Rig_Light"
		];
		
_hats = selectRandom [
			"H_Booniehat_khk",
			"H_Booniehat_oli",
			"H_Cap_grn_BI",
			"H_Cap_blk",
			"H_ShemagOpen_tan",
			"H_ShemagOpen_khk",
			"H_Beret_blk",
			"CUP_H_ChDKZ_Beret",
			"CUP_H_TKI_Lungee_Open_06",
			"CUP_H_TKI_Lungee_Open_05",
			"CUP_H_TK_Helmet",
			"H_Bandanna_khk",
			"CUP_H_TKI_Lungee_Open_03",
			"CUP_H_TKI_Lungee_06",
			"CUP_H_SLA_Helmet"
		];

_unit forceAddUniform _uniforms;
_unit addHeadgear _hats;
//_unit addVest _vests;

_unit addItemToUniform "ACE_tourniquet";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
_unit addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";

_unit setFace _faces;
_unit setSpeaker _speakers;

_unit addWeapon _weapons;

switch (_weapons) do
{
    case "hlc_rifle_akm":
    {
		_unit addVest _vests;
        for "_i" from 1 to 7 do {_unit addMagazine "hlc_30Rnd_762x39_b_ak";};
		for "_i" from 1 to 2 do {_unit addItemToVest "CUP_HandGrenade_M67";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
    };
	
	case "hlc_rifle_ak47":
    {
		_unit addVest _vests;
        for "_i" from 1 to 7 do {_unit addMagazine "hlc_30Rnd_762x39_b_ak";};
		for "_i" from 1 to 2 do {_unit addItemToVest "CUP_HandGrenade_M67";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
    };

    case "hlc_rifle_FAL5000":
    {
		_unit addVest _vests;
        for "_i" from 1 to 7 do {_unit addMagazine "hlc_20Rnd_762x51_B_fal";};
		for "_i" from 1 to 2 do {_unit addItemToVest "CUP_HandGrenade_M67";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		
    };
	
	case "hlc_rifle_g3a3":
	{
		_unit addVest _vests;
        for "_i" from 1 to 7 do {_unit addMagazine "hlc_20rnd_762x51_b_G3";};
		for "_i" from 1 to 2 do {_unit addItemToVest "CUP_HandGrenade_M67";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	};
	
	case "CUP_hgun_SA61":
	{
		_unit addVest _vests;
		
        for "_i" from 1 to 7 do {_unit addMagazine "CUP_20Rnd_B_765x17_Ball_M";};
		
		_unit addWeapon "CUP_launch_RPG7V";
		_unit addBackpack "CUP_B_RPGPack_Khaki";
		for "_i" from 1 to 3 do {_unit addItemToBackpack "CUP_PG7V_M";};
	};
	
	default{
		_unit addWeapon "hlc_rifle_ak47";
		for "_i" from 1 to 5 do {_unit addMagazine "hlc_30Rnd_762x39_b_ak";};
	};
};