//gear load script
//put _unit in unit init: nul = [_unit,<soldierclass>] execVM "unitloadout.sqf";
//<soldierclass>
//- soldier
//- medic
//- engineer

//check if player

waitUntil {(!isNull player && time > 0)};

_unit = __unit select 0;
_kitset = __unit select 1;
if !(local _unit) exitWith {};

//==remove items==
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

switch (_kitset) do{

	case "officer":{
		_unit forceAddUniform "rhs_uniform_flora_patchless_alt";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
		_unit addItemToUniform "ACE_EarPlugs";
		_unit addItemToUniform "ACRE_PRC343";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
		_unit addItemToUniform "ACE_tourniquet";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
		_unit addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
		_unit addItemToUniform "ACE_microDAGR";
		_unit addItemToUniform "rhs_mag_rgd5";
		_unit addVest "rhs_6b13_6sh92_radio";
		for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
		_unit addItemToVest "rhs_mag_rgd5";
		_unit addBackpack "rhs_sidor";
		for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_quikclot";};
		_unit addItemToBackpack "ACE_personalAidKit";
		_unit addItemToBackpack "ACE_Clacker";
		_unit addItemToBackpack "ACE_DefusalKit";
		_unit addItemToBackpack "Chemlight_green";
		_unit addItemToBackpack "Chemlight_red";
		_unit addItemToBackpack "Chemlight_yellow";
		_unit addItemToBackpack "Chemlight_blue";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
		_unit addItemToBackpack "rhs_mag_nspn_yellow";
		_unit addItemToBackpack "rhs_mag_nspn_red";
		_unit addItemToBackpack "rhs_mag_nspn_green";
		for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
		_unit addHeadgear "rhsusf_Bowman";
		_unit addGoggles "G_Balaclava_blk";
		_unit addWeapon "rhs_weap_ak74m_2mag";
		_unit addPrimaryWeaponItem "rhs_acc_dtk";
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "rto":{
		_unit forceAddUniform "rhs_uniform_flora_patchless_alt";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
		_unit addItemToUniform "ACE_EarPlugs";
		_unit addItemToUniform "ACRE_PRC343";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
		_unit addItemToUniform "ACE_tourniquet";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
		_unit addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
		_unit addItemToUniform "rhs_mag_rgd5";
		_unit addVest "rhs_6b13_6sh92_radio";
		_unit addItemToVest "ACE_DefusalKit";
		_unit addItemToVest "ACE_Clacker";
		_unit addItemToVest "rhs_mag_rdg2_white";
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
		_unit addItemToVest "rhs_mag_fakels";
		for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
		_unit addBackpack "rhs_assault_umbts";
		_unit addItemToBackpack "ACRE_PRC117F";
		_unit addItemToBackpack "ACE_personalAidKit";
		_unit addItemToBackpack "ACE_morphine";
		_unit addItemToBackpack "ACE_atropine";
		_unit addItemToBackpack "ACE_epinephrine";
		_unit addItemToBackpack "Chemlight_green";
		_unit addItemToBackpack "Chemlight_red";
		_unit addItemToBackpack "Chemlight_yellow";
		_unit addItemToBackpack "Chemlight_blue";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "APERSTripMine_Wire_Mag";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
		for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
		_unit addHeadgear "rhsusf_Bowman";
		_unit addGoggles "G_Balaclava_blk";
		_unit addWeapon "rhs_weap_ak74m";
		_unit addPrimaryWeaponItem "rhs_acc_dtk";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "at":{
		_unit forceAddUniform "rhs_uniform_flora_patchless_alt";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
		_unit addItemToUniform "ACE_EarPlugs";
		_unit addItemToUniform "ACRE_PRC343_ID_3";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
		_unit addItemToUniform "ACE_tourniquet";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
		_unit addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
		_unit addItemToUniform "rhs_mag_rgd5";
		_unit addVest "rhs_6b13_6sh92_radio";
		_unit addItemToVest "ACE_DefusalKit";
		_unit addItemToVest "ACE_Clacker";
		_unit addItemToVest "rhs_mag_rdg2_white";
		_unit addItemToVest "rhs_mag_rgd5";
		for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
		_unit addBackpack "rhs_rpg_empty";
		_unit addItemToBackpack "Chemlight_green";
		_unit addItemToBackpack "Chemlight_red";
		_unit addItemToBackpack "Chemlight_yellow";
		_unit addItemToBackpack "Chemlight_blue";
		for "_i" from 1 to 4 do {_unit addItemToBackpack "rhs_rpg7_PG7VL_mag";};
		_unit addHeadgear "rhsusf_Bowman";
		_unit addGoggles "G_Balaclava_blk";
		_unit addWeapon "rhs_weap_ak74m";
		_unit addPrimaryWeaponItem "rhs_acc_dtk";
		_unit addWeapon "rhs_weap_rpg7";
		_unit addSecondaryWeaponItem "rhs_acc_pgo7v";
		_unit addWeapon "ACE_Vector";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};

	case "soldier":{
		
		_unit forceAddUniform "rhs_uniform_flora_patchless_alt";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
		_unit addItemToUniform "ACE_EarPlugs";
		_unit addItemToUniform "ACRE_PRC343";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
		_unit addItemToUniform "ACE_tourniquet";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
		_unit addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
		_unit addItemToUniform "rhs_mag_rgd5";
		_unit addVest "rhs_6b13_6sh92_radio";
		_unit addItemToVest "ACE_DefusalKit";
		_unit addItemToVest "ACE_Clacker";
		_unit addItemToVest "rhs_mag_rdg2_white";
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
		_unit addItemToVest "rhs_mag_fakels";
		for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
		_unit addBackpack "rhs_assault_umbts";
		_unit addItemToBackpack "ACE_personalAidKit";
		_unit addItemToBackpack "ACE_morphine";
		_unit addItemToBackpack "ACE_atropine";
		_unit addItemToBackpack "ACE_epinephrine";
		_unit addItemToBackpack "Chemlight_green";
		_unit addItemToBackpack "Chemlight_red";
		_unit addItemToBackpack "Chemlight_yellow";
		_unit addItemToBackpack "Chemlight_blue";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "APERSTripMine_Wire_Mag";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
		for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
		_unit addHeadgear "rhsusf_Bowman";
		_unit addGoggles "G_Balaclava_blk";
		_unit addWeapon "rhs_weap_ak74m";
		_unit addPrimaryWeaponItem "rhs_acc_dtk";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "mg":{
		_unit forceAddUniform "rhs_uniform_flora_patchless_alt";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
		_unit addItemToUniform "ACE_EarPlugs";
		_unit addItemToUniform "ACRE_PRC343";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
		_unit addItemToUniform "ACE_tourniquet";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
		_unit addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
		_unit addItemToUniform "rhs_mag_rgd5";
		_unit addVest "rhs_6b13";
		_unit addItemToVest "rhs_mag_fakels";
		_unit addItemToVest "rhs_100Rnd_762x54mmR";
		_unit addItemToVest "rhs_100Rnd_762x54mmR_green";
		_unit addBackpack "rhs_assault_umbts";
		_unit addItemToBackpack "ACE_personalAidKit";
		_unit addItemToBackpack "Chemlight_green";
		_unit addItemToBackpack "Chemlight_red";
		_unit addItemToBackpack "Chemlight_yellow";
		_unit addItemToBackpack "Chemlight_blue";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rgd5";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_rdg2_white";};
		_unit addItemToBackpack "rhs_100Rnd_762x54mmR";
		_unit addItemToBackpack "rhs_100Rnd_762x54mmR_green";
		_unit addHeadgear "rhsusf_Bowman";
		_unit addGoggles "G_Balaclava_blk";
		_unit addWeapon "rhs_weap_pkm";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "medic":{
		_unit forceAddUniform "rhs_uniform_flora_patchless_alt";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
		_unit addItemToUniform "ACE_EarPlugs";
		_unit addItemToUniform "ACRE_PRC343";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
		_unit addItemToUniform "ACE_tourniquet";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
		_unit addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
		_unit addItemToUniform "rhs_mag_rgd5";
		_unit addVest "rhs_6b13_6sh92_radio";
		for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
		_unit addItemToVest "rhs_mag_rgd5";
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
		_unit addBackpack "B_Carryall_cbr";
		for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_packingBandage";};
		for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_elasticBandage";};
		for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_tourniquet";};
		for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_quikclot";};
		for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_atropine";};
		for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_surgicalKit";};
		for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_personalAidKit";};
		for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_salineIV_500";};
		for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_plasmaIV_500";};IT Tuter
		for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_bloodIV_500";};
		_unit addItemToBackpack "ACE_bodyBag";
		_unit addItemToBackpack "rhs_mag_rdg2_white";
		_unit addItemToBackpack "rhs_mag_nspn_yellow";
		_unit addItemToBackpack "rhs_mag_nspn_red";
		for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
		_unit addHeadgear "rhsusf_Bowman";
		_unit addGoggles "G_Balaclava_blk";
		_unit addWeapon "rhs_weap_ak74m";
		_unit addPrimaryWeaponItem "rhs_acc_dtk";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
	};
	
	case "engineer":{
		_unit forceAddUniform "rhs_uniform_flora_patchless_alt";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
		_unit addItemToUniform "ACE_EarPlugs";
		_unit addItemToUniform "ACRE_PRC343";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_quikclot";};
		_unit addItemToUniform "ACE_tourniquet";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_packingBandage";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_elasticBandage";};
		_unit addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_CableTie";};
		_unit addItemToUniform "rhs_mag_rgd5";
		_unit addVest "rhs_6b13_6sh92_radio";
		_unit addItemToVest "ACE_DefusalKit";
		_unit addItemToVest "ACE_Clacker";
		_unit addItemToVest "rhs_mag_rdg2_white";
		_unit addItemToVest "rhs_mag_rgd5";
		for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
		_unit addBackpack "rhs_assault_umbts";
		_unit addItemToBackpack "MineDetector";
		_unit addItemToBackpack "Chemlight_green";
		_unit addItemToBackpack "Chemlight_red";
		_unit addItemToBackpack "Chemlight_yellow";
		_unit addItemToBackpack "Chemlight_blue";
		_unit addItemToBackpack "ACE_personalAidKit";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_30Rnd_545x39_7N10_AK";};
		for "_i" from 1 to 5 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
		_unit addItemToBackpack "rhs_mine_pmn2_mag";
		_unit addHeadgear "rhsusf_Bowman";
		_unit addGoggles "G_Balaclava_blk";
		_unit addWeapon "rhs_weap_ak74m_camo";
		_unit addPrimaryWeaponItem "rhs_acc_dtk";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "pilot":{
		_unit forceAddUniform "rhs_uniform_df15";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
		_unit addItemToUniform "ACE_morphine";
		_unit addItemToUniform "ACE_EarPlugs";
		_unit addItemToUniform "ACRE_PRC343";
		_unit addItemToUniform "ACE_tourniquet";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_packingBandage";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_elasticBandage";};
		_unit addItemToUniform "ACE_MapTools";
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_quikclot";};
		_unit addItemToUniform "ACE_microDAGR";
		_unit addItemToUniform "rhs_weap_makarov_pmm";
		_unit addItemToUniform "rhs_mag_9x18_12_57N181S";
		_unit addItemToUniform "Chemlight_red";
		_unit addVest "rhs_6sh46";
		_unit addItemToVest "ACE_fieldDressing";
		_unit addItemToVest "ACE_packingBandage";
		_unit addItemToVest "ACE_elasticBandage";
		_unit addItemToVest "rhs_mag_nspn_red";
		_unit addItemToVest "rhs_mag_nspn_green";
		for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_9x18_12_57N181S";};
		_unit addBackpack "ACE_NonSteerableParachute";
		_unit addHeadgear "rhs_zsh7a";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
};