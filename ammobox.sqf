//Init stuff :- nul = [this] execVM "ammobox.sqf"
_crate = _this select 0;

ov_fnc_lastBackpack = {
	everyBackpack _this select (count everyBackpack _this - 1)
};

//Lists of items to include

_availableBackpacks = [
	"rhs_sidor",
	"rhs_assault_umbts"
];

_availableWeapons = [
	"rhs_weap_ak103",
	"rhs_weap_ak74m_dtk",
	"rhs_weap_ak74m_gp25",
	"rhs_weap_rpg26"
];

_availableMagazines = [
	"rhs_30Rnd_545x39_AK",
	"rhs_30Rnd_545x39_AK_no_tracers",
	"rhs_30Rnd_545x39_AK_green",
	"rhs_30Rnd_545x39_7N10_AK",
	"rhs_30Rnd_545x39_7N22_AK",
	"rhs_45Rnd_545X39_7N22_AK",
	"rhs_45Rnd_545X39_7N10_AK",
	"rhs_45Rnd_545X39_AK_Green",
	"rhs_45Rnd_545X39_AK",
	"rhs_30Rnd_762x39mm",
	"rhs_30Rnd_762x39mm_tracer",
	"rhs_30Rnd_762x39mm_89",
	"rhs_VOG25",
	"rhs_VOG25P",
	"rhs_VG40TB",
	"rhs_VG40SZ",
	"rhs_VG40OP_white",
	"rhs_VG40OP_green",
	"rhs_VG40OP_red",
	"rhs_GRD40_White",
	"rhs_GRD40_Green",
	"rhs_GRD40_Red",
	"rhs_mag_rdg2_white",
	"rhs_mag_rdg2_black",
	"rhs_mag_rgd5",
	"rhs_mag_nspd",
	"rhs_mag_nspn_yellow",
	"rhs_mag_nspn_red",
	"DemoCharge_Remote_Mag",
	"rhs_rpg26_mag"
];

_availableItems = [

	"ACE_MapTools",
	"ACE_key_lockpick",
	"ACE_SpareBarrel",
	"ACE_key_lockpick",
	"ACE_CableTie",
	"ACE_Clacker",
	"ACE_M26_Clacker",
	"ACE_DefusalKit",
	"ACE_DeadManSwitch",
	"ACE_Cellphone",
	"ACE_EarPlugs",
	"ACE_Kestrel4500",
	"ACE_fieldDressing",
	"ACE_packingBandage",
	"ACE_elasticBandage",
	"ACE_tourniquet",
	"ACE_morphine",
	"ACE_atropine",
	"ACE_epinephrine",
	"ACE_plasmaIV",
	"ACE_plasmaIV_500",
	"ACE_plasmaIV_250",
	"ACE_bloodIV",
	"ACE_bloodIV_500",
	"ACE_bloodIV_250",
	"ACE_salineIV",
	"ACE_salineIV_500",
	"ACE_salineIV_250",
	"ACE_quikclot",
	"ACE_personalAidKit",
	"ACE_surgicalKit",
	"ACE_bodyBag",
	//RifleGear
	"rhs_acc_pbs1",
	"rhs_acc_dtk",
	"rhs_acc_dtk4short",
	"rhs_acc_dtk4long",
	"rhs_acc_dtk4screws",
	"rhs_acc_dtk3",
	"rhs_acc_dtk1",
	"rhs_acc_dtk1l",
	"rhs_acc_ak5",
	"rhs_acc_tgpa",
	"rhs_acc_pbs1",
	"rhs_acc_tgpv",
	//Headgear
	"rhs_6b26_ess",
	"rhs_6b27m_digi",
	//Vests
	"rhs_6b13_Flora_6sh92_radio",
	"rhs_6b13_Flora_6sh92_vog",
	//Goggles
	"rhs_balaclava",
	"rhs_scarf",
	//Uniforms
	"rhs_uniform_flora_patchless",
	"rhs_uniform_flora_patchless_alt"
	
];


//Populate with predefined items and whatever is already in the crate
[_crate,((backpackCargo _crate) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _availableItems)] call BIS_fnc_addVirtualItemCargo;
[_crate,((magazineCargo _crate) + _availableMagazines)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,((weaponCargo _crate) + _availableWeapons)] call BIS_fnc_addVirtualWeaponCargo;


_crate addBackpackCargoGlobal ["B_Carryall_cbr", 2];
_crate call ov_fnc_lastBackpack addItemCargoGlobal ["ACE_fieldDressing", 15];
_crate call ov_fnc_lastBackpack addItemCargoGlobal ["ACE_packingBandage", 15];
_crate call ov_fnc_lastBackpack addItemCargoGlobal ["ACE_elasticBandage", 15];
_crate call ov_fnc_lastBackpack addItemCargoGlobal ["ACE_tourniquet", 5];
_crate call ov_fnc_lastBackpack addItemCargoGlobal ["ACE_morphine", 10];
_crate call ov_fnc_lastBackpack addItemCargoGlobal ["ACE_quikclot", 15];
_crate call ov_fnc_lastBackpack addItemCargoGlobal ["ACE_atropine", 12];
_crate call ov_fnc_lastBackpack addItemCargoGlobal ["ACE_epinephrine", 10];
_crate call ov_fnc_lastBackpack addItemCargoGlobal ["ACE_surgicalKit", 3];
_crate call ov_fnc_lastBackpack addItemCargoGlobal ["ACE_personalAidKit", 3];
_crate call ov_fnc_lastBackpack addItemCargoGlobal ["ACE_salineIV_500", 6];
_crate call ov_fnc_lastBackpack addItemCargoGlobal ["ACE_plasmaIV_500", 3];
_crate call ov_fnc_lastBackpack addItemCargoGlobal ["ACE_bloodIV_500", 3];
_crate call ov_fnc_lastBackpack addItemCargoGlobal ["ACE_bodyBag", 1];