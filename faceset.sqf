//unit init: nul = [this] execVM "scripts\faceset.sqf";
if (!isServer) exitWith {};

_unit = _this select 0;

_faces = selectRandom [
		"GreekHead_A3_10_sa",
		"WhiteHead_22_sa",
		"PersianHead_A3_04_sa"];

[_unit, _faces] remoteExec ["setFace", 0, _unit];



//Also works==================
/*
_faces = [
		"GreekHead_A3_10_sa",
		"WhiteHead_22_sa",
		"PersianHead_A3_04_sa"] call BIS_fnc_selectRandom;
		//bis suggests use selectRandom rather
*/

//_unit setFace _faces;
//if remove: if (!isServer) exitWith {}; can use:
//if (isServer) then {[_unit, _faces] remoteExec ["setFace", 0, _unit]};