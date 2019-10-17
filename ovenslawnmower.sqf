// nul = [this,"<markername>"] execVM "scripts\ovenslawnmower.sqf";
if (!isServer) exitWith {};

_item = _this select 0;
_marker = _this select 1;
_sin = sin markerDir _marker;
_cos = cos markerDir _marker;


markerSize _marker params ["_mw", "_mh"];
markerPos _marker params ["_mx", "_my"];
for "_i" from -_mw to _mw step 7 do {
  for "_j" from -_mh to _mh step 7 do {
    createVehicle ["Land_ClutterCutter_large_F", [_mx + _cos * _i + _sin * _j, _my + -_sin * _i + _cos * _j, 0], [], 0, "CAN_COLLIDE"];
  }; 
};