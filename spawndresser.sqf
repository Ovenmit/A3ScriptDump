//Skinny Dresser Script
//By Ovenmit
//Paste in Spawn AI module expression: { nul = _x execVM "spawndresser.sqf";} foreach (units (_this select 0));
_unit = _this;

removeUniform _unit;
removeHeadgear _unit;
removeAllWeapons _unit;
removeVest _unit;
removeBackpack _unit;
removeGoggles _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;

_uniforms = [
		"U_CAF_AG_AFR_CLOTHES_01", 
		"U_CAF_AG_AFR_CLOTHES_01a", 
		"U_CAF_AG_AFR_CLOTHES_01b", 
		"U_CAF_AG_AFR_CLOTHES_01c", 
		"U_CAF_AG_AFR_CLOTHES_01d", 
		"U_CAF_AG_AFR_CLOTHES_01e", 
		"U_CAF_AG_AFR_CLOTHES_02", 
		"U_CAF_AG_AFR_CLOTHES_02a", 
		"U_CAF_AG_AFR_CLOTHES_02b"
	] call BIS_fnc_selectRandom;
			
_faces = [
		"AfricanHead_01",
		"AfricanHead_02",
		"AfricanHead_03"
	] call BIS_fnc_selectRandom;
		
_vests = [
		"V_BandollierB_khk",
		"V_Chestrig_khk",
		"V_Chestrig_oli",
		"V_TacVest_oli",
		"V_BandollierB_oli",
		""
	] call BIS_fnc_selectRandom;

_weapons = [
		"CUP_arifle_AKM",
		"CUP_arifle_AKS",
		"CUP_hgun_Colt1911",
		"CUP_hgun_Makarov",
		"CUP_arifle_AK74",
		"CUP_hgun_SA61",
		"CUP_lmg_PKM"
	] call BIS_fnc_selectRandom;	

_unit setFace _faces;
_unit setSpeaker "Male01PER";
_unit forceAddUniform _uniforms;
_unit addVest _vests;
_unit addWeapon _weapons;
_unit addItemToUniform "ACE_EarPlugs";
_unit linkItem "ItemWatch";
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "MiniGrenade";

/*
//meh?
if (_unit hasWeapon "CUP_arifle_AKM" || _unit hasWeapon "CUP_arifle_AKS") then {
	for "_i" from 1 to 6 do {_unit addMagazine "CUP_30Rnd_762x39_AK47_M";};
}else{

};
*/

switch (_weapons) do
{
    case "CUP_arifle_AKM":
    {
        for "_i" from 1 to 6 do {_unit addMagazine "CUP_30Rnd_762x39_AK47_M";};
    };

    case "CUP_arifle_AKS":
    {
        for "_i" from 1 to 6 do {_unit addMagazine "CUP_30Rnd_762x39_AK47_M";};
    };
	
	case "CUP_arifle_AK74":
    {
        for "_i" from 1 to 6 do {_unit addMagazine "CUP_30Rnd_545x39_AK_M";};
    };
	
	case "CUP_hgun_Colt1911":
    {
        for "_i" from 1 to 6 do {_unit addMagazine "CUP_7Rnd_45ACP_1911";};
    };
	
	case "CUP_hgun_Makarov":
    {
        for "_i" from 1 to 6 do {_unit addMagazine "CUP_8Rnd_9x18_Makarov_M";};
    };
	
	case "CUP_hgun_SA61":
    {
        for "_i" from 1 to 3 do {_unit addMagazine "CUP_20Rnd_B_765x17_Ball_M";};
		_unit addweapon "CUP_launch_RPG7V";
		_unit addBackpack "CUP_B_RPGPack_Khaki";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "CUP_PG7V_M";};
		_unit addItemToBackpack "CUP_PG7VL_M";
    };
	
	case "CUP_lmg_PKM":
    {
        for "_i" from 1 to 3 do {_unit addMagazine "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M";};
    };
	
	default{
		_unit addWeapon "CUP_arifle_AKS";
		for "_i" from 1 to 6 do {_unit addMagazine "CUP_30Rnd_762x39_AK47_M";};
	};
};
