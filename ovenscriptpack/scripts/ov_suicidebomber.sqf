/*
//Medbox Items Add Script
//By Ovenmit
//paste in init.sqf
paste in unit init:
nul = [this] execVM "scripts\ov_suicidebomber.sqf";
==================================
*/
comment "SuicideBomber activated!";

if (!isServer) exitWith {};

uiSleep 0.5;


_terryb = _this select 0;

_trgTerry = createTrigger ["EmptyDetector",  [0,0,0]];
_trgTerry setTriggerActivation ["NONE", "PRESENT", true];
_trgTerry setTriggerStatements [format ["west countSide (getPos %1 nearEntities 10) > 0 and alive %1;",_terryb], format ["bombornullanyvariablename = 'Bo_GBU12_LGB' createVehicle getPos %1",_terryb], "hint 'no boom!'"];


comment "SuicideBomber Searchloop!";
while {alive _terryb} do {
	_killbox = _terryb nearEntities 50; 
	_tgt1 = _killbox select 0; 
	_terryb doMove getPos _tgt1;
	//hint format ["I select %1", _tgt1];
	sleep 1;
};
