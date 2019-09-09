/*
//Medbox Items Add Script
//By Ovenmit
//paste in init.sqf
paste in unit init:
nul = [this] execVM "scripts\vehiclemedbox_ov.sqf";
==================================
*/
if (!isServer) exitWith {};

uiSleep 0.5;

_vicmed = _this select 0;

comment "Adding medical items to vehicle";
_vicmed addItemCargoGlobal ["ACE_morphine",10];
_vicmed addItemCargoGlobal ["ACE_epinephrine",8];
_vicmed addItemCargoGlobal ["ACE_fieldDressing",30];
_vicmed addItemCargoGlobal ["ACE_elasticBandage",20];
_vicmed addItemCargoGlobal ["ACE_quikclot",20];
_vicmed addItemCargoGlobal ["ACE_packingBandage",20];
_vicmed addItemCargoGlobal ["ACE_personalAidKit",4];
_vicmed addItemCargoGlobal ["ACE_surgicalKit",1];
_vicmed addItemCargoGlobal ["ACE_tourniquet",10];
_vicmed addItemCargoGlobal ["ACE_adenosine",5];
_vicmed addItemCargoGlobal ["ACE_atropine",5];
_vicmed addItemCargoGlobal ["ACE_bloodIV_500",4];
_vicmed addItemCargoGlobal ["ACE_plasmaIV_500",4];
_vicmed addItemCargoGlobal ["ACE_salineIV_500",4];
_vicmed addItemCargoGlobal ["ACE_CableTie",10];
_vicmed addItemCargoGlobal ["ACE_bodyBag",4];
_vicmed addItemCargoGlobal ["ACE_EarPlugs",10];
_vicmed addItemCargoGlobal ["ACE_wirecutter",1];
_vicmed addItemCargoGlobal ["ACE_SpraypaintGreen",2];
_vicmed addItemCargoGlobal ["ACE_SpraypaintRed",2];
_vicmed addItemCargoGlobal ["ACE_EntrenchingTool",4];
comment "complete";