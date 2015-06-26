//Init stuff :- nul = [this] execVM "ammobox.sqf"
_crate = _this select 0;


_crate addWeaponCargoGlobal ["rhs_weap_ak103", 6];
_crate addWeaponCargoGlobal ["rhs_weap_akm", 6];
_crate addWeaponCargoGlobal ["rhs_weap_ak74m_dtk", 6];
_crate addWeaponCargoGlobal ["rhs_weap_ak74m_gp25",6];
_crate addWeaponCargoGlobal ["Binocular", 6];

_crate AddMagazineCargoGlobal ["rhs_30Rnd_545x39_AK", 30];
_crate AddMagazineCargoGlobal ["rhs_30Rnd_545x39_AK_no_tracers", 30];
_crate AddMagazineCargoGlobal ["rhs_30Rnd_545x39_AK_green", 30];
_crate AddMagazineCargoGlobal ["rhs_30Rnd_545x39_7N10_AK", 30];
_crate AddMagazineCargoGlobal ["rhs_30Rnd_545x39_7N22_AK", 30];
_crate AddMagazineCargoGlobal ["rhs_45Rnd_545X39_7N22_AK", 30];
_crate AddMagazineCargoGlobal ["rhs_45Rnd_545X39_7N10_AK", 30];
_crate AddMagazineCargoGlobal ["rhs_45Rnd_545X39_AK_Green", 30];
_crate AddMagazineCargoGlobal ["rhs_45Rnd_545X39_AK", 30];
_crate AddMagazineCargoGlobal ["rhs_30Rnd_762x39mm", 30];
_crate AddMagazineCargoGlobal ["rhs_30Rnd_762x39mm_tracer", 30];
_crate AddMagazineCargoGlobal ["rhs_30Rnd_762x39mm_89", 30];
_crate AddMagazineCargoGlobal ["rhs_VOG25", 30];
_crate AddMagazineCargoGlobal ["rhs_VOG25P", 30];
_crate AddMagazineCargoGlobal ["rhs_VG40TB", 30];
_crate AddMagazineCargoGlobal ["rhs_VG40SZ", 30];
_crate AddMagazineCargoGlobal ["rhs_VG40OP_white", 30];
_crate AddMagazineCargoGlobal ["rhs_VG40OP_green", 30];
_crate AddMagazineCargoGlobal ["rhs_VG40OP_red", 30];
_crate AddMagazineCargoGlobal ["rhs_GRD40_White", 30];
_crate AddMagazineCargoGlobal ["rhs_GRD40_Green", 30];
_crate AddMagazineCargoGlobal ["rhs_GRD40_Red", 30];
_crate AddMagazineCargoGlobal ["rhs_mag_rdg2_white", 30];
_crate AddMagazineCargoGlobal ["rhs_mag_rdg2_black", 30];
_crate AddMagazineCargoGlobal ["rhs_mag_rgd5", 30];
_crate AddMagazineCargoGlobal ["rhs_mag_nspd", 30];
_crate AddMagazineCargoGlobal ["rhs_mag_nspn_yellow", 30];
_crate AddMagazineCargoGlobal ["rhs_mag_nspn_red", 30];

_crate addItemCargoGlobal ["rhs_acc_dtk",10];

_crate addItemCargoGlobal ["ACE_MapTools",12];
_crate addItemCargoGlobal ["ACE_key_lockpick",5];
_crate addItemCargoGlobal ["ACE_SpareBarrel",2];
_crate addItemCargoGlobal ["ACE_CableTie",30];
_crate addItemCargoGlobal ["ACE_Clacker",5];
_crate addItemCargoGlobal ["ACE_M26_Clacker",5];
_crate addItemCargoGlobal ["ACE_DefusalKit",5];
_crate addItemCargoGlobal ["ACE_DeadManSwitch",5];
_crate addItemCargoGlobal ["ACE_Cellphone",2];
_crate addItemCargoGlobal ["ACE_EarPlugs",20];
_crate addItemCargoGlobal ["ACE_Kestrel4500",2];
_crate addItemCargoGlobal ["ACE_fieldDressing",30];
_crate addItemCargoGlobal ["ACE_packingBandage",30];
_crate addItemCargoGlobal ["ACE_elasticBandage",30];
_crate addItemCargoGlobal ["ACE_tourniquet",30];
_crate addItemCargoGlobal ["ACE_morphine",30];
_crate addItemCargoGlobal ["ACE_atropine",30];
_crate addItemCargoGlobal ["ACE_epinephrine",30];
_crate addItemCargoGlobal ["ACE_plasmaIV",30];
_crate addItemCargoGlobal ["ACE_plasmaIV_500",30];
_crate addItemCargoGlobal ["ACE_plasmaIV_250",30];
_crate addItemCargoGlobal ["ACE_bloodIV",30];
_crate addItemCargoGlobal ["ACE_bloodIV_500",30];
_crate addItemCargoGlobal ["ACE_bloodIV_250",30];
_crate addItemCargoGlobal ["ACE_salineIV",30];
_crate addItemCargoGlobal ["ACE_salineIV_500",30];
_crate addItemCargoGlobal ["ACE_salineIV_250",30];
_crate addItemCargoGlobal ["ACE_quikclot",30];
_crate addItemCargoGlobal ["ACE_personalAidKit",30];
_crate addItemCargoGlobal ["ACE_surgicalKit",30];
_crate addItemCargoGlobal ["ACE_bodyBag",30];

_crate addItemCargoGlobal ["rhs_6b26_ess",12];
_crate addItemCargoGlobal ["rhs_6b27m_digi",12];

_crate addItemCargoGlobal ["rhs_uniform_flora_patchless",12];
_crate addItemCargoGlobal ["rhs_uniform_flora_patchless_alt",12];
_crate addItemCargoGlobal ["rhs_6b13_Flora_6sh92_radio",12];
_crate addItemCargoGlobal ["rhs_6b13_Flora_6sh92_vog",12];
_crate addItemCargoGlobal ["rhs_balaclava",12];
_crate addItemCargoGlobal ["rhs_scarf",12];

_crate addBackpackCargoGlobal ["rhs_sidor",12];
_crate addBackpackCargoGlobal ["rhs_assault_umbts",12];

["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;
//Populate with predefined items and whatever is already in the crate
[_crate,(backpackCargo _crate)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,(itemCargo _crate)] call BIS_fnc_addVirtualItemCargo;
[_crate,(magazineCargo _crate)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,(weaponCargo _crate)] call BIS_fnc_addVirtualWeaponCargo;