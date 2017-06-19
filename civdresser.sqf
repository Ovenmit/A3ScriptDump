/*
//Civilian Dresser Script
//By Ovenmit
//paste in init.sqf
All units of side (EAST, WEST, ETC)

{if (side _x == civilian) then { 
 nul = [_x] execVM "scripts\civdresser.sqf"; 
}} foreach allUnits;

OR paste in unit init:
nul = [this] execVM "scripts\dresserscript.sqf";
==================================
*/

if (!isServer) exitWith {};

uiSleep 0.5;

_unit = _this select 0;

removeUniform _unit;
//removeHeadgear _unit;
removeAllWeapons _unit;
removeVest _unit;
removeBackpack _unit;
//removeGoggles _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
		
_uniforms = selectRandom [
	"CUP_U_I_GUE_Anorak_01",
	"CUP_U_I_GUE_Anorak_03",
	"U_I_C_Soldier_Bandit_4_F",
	"U_I_C_Soldier_Bandit_1_F",
	"U_I_C_Soldier_Bandit_2_F",
	"U_I_C_Soldier_Bandit_5_F",
	"U_C_Man_casual_2_F",
	"U_C_Man_casual_3_F",
	"U_C_Man_casual_1_F",
	"CUP_U_O_CHDKZ_Lopotev",
	"U_C_Poloshirt_blue",
	"U_C_Poloshirt_burgundy",
	"U_C_Poloshirt_redwhite",
	"U_C_Poor_1",
	"U_C_Poloshirt_salmon",
	"U_C_Poloshirt_stripped",
	"U_C_Poloshirt_tricolour",
	"U_OrestesBody",
	"U_C_Journalist",
	"U_Marshal",
	"CUP_U_C_Profiteer_01",
	"CUP_U_C_Profiteer_04",
	"CUP_U_C_Rocker_01",
	"CUP_U_C_Rocker_03",
	"CUP_U_C_Rocker_02",
	"CUP_U_C_Rocker_04",
	"CUP_U_C_Suit_01",
	"U_C_Man_casual_6_F",
	"U_C_Man_casual_4_F",
	"U_C_Man_casual_5_F",
	"CUP_U_C_Worker_03",
	"CUP_U_C_Worker_04",
	"CUP_U_C_Worker_02",
	"CUP_U_C_Worker_01",
	"CUP_U_C_Suit_02"
];

_packs = selectRandom [
	"B_FieldPack_khk",
	"",
	"B_FieldPack_oli",
	"",
	"B_FieldPack_oucamo",
	"",
	"B_Kitbag_sgg",
	"",
	"B_Kitbag_rgr",
	"",
	"B_TacticalPack_oli",
	"",
	"B_Carryall_ocamo"
];

_unit forceAddUniform _uniforms;
//_unit addHeadgear _hats;
_unit addBackpack _packs;
//_unit addVest _vests;

_unit linkItem "ItemWatch";