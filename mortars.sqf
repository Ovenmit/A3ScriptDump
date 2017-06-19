//nul = [<unit>,"<marker>"] execVM "scripts\mortars.sqf";

if (!isServer) exitWith {};
_fireUnit = _this select 0;
_fireMark = _this select 1;
_fireArea = markerSize _fireMark;
//_firePos = getMarkerPos _fireMark;

for "_i" from 1 to 6 do { 
	_firePos = _fireMark call BIS_fnc_randomPosTrigger;
	_fireUnit doArtilleryFire [_firePos, "8Rnd_82mm_Mo_shells", 1]; //silent
	//art1 commandArtilleryFire [_firePos, "8Rnd_82mm_Mo_shells", 1]; //via radio
	hint format["Marker: %1 | Pos: %2 | Area: %3 | Unit: %4",_fireMark,_firePos,_fireArea,_fireUnit];
	uiSleep random [2, 4, 6]; 
};