//nul = [this] execVM "scripts\patroldog.sqf";

if (!isServer) exitWith {};
_unit = _this select 0;

_dog = createAgent ["Alsatian_Sandblack_F", getPosATL _unit, [], 5, "NONE"];
_dog setVariable ["BIS_fnc_animalBehaviour_disable", true];

_dog playMove "Dog_Run";

while { sleep 1; alive _dog } do
{
	_dog moveTo getPosATL _unit;
};
