//nul = ["<marker>"] execVM "scripts\mortars.sqf";

if (!isServer) exitWith {};
_fireMark = _this select 0;
_fireArea = markerSize _fireMark;
//_firePos = getMarkerPos _fireMark;
_firePos = _fireMark call BIS_fnc_randomPosTrigger;

for "_i" from 1 to 6 do { 
  art1 doArtilleryFire [_firePos, "8Rnd_82mm_Mo_shells", 1]; //silent
  //art1 commandArtilleryFire [_firePos, "8Rnd_82mm_Mo_shells", 1]; //via radio
  //hint format["Marker: %1 | Pos: %2 | Area: %3",_fireMark,_firePos,_fireArea];
  uiSleep random [2, 4, 6]; 
};