_unit = _this select 0;

_unit addAction [("<t color='#FF0000'>" + ("Heal!") + "</t>"), 'ovhealth\healself.sqf', [], 6, false, false, """"];
_unit addAction [("<t color='#FF0000'>" + ("Check Health") + "</t>"), 'ovhealth\checkself.sqf', [], 6, false, false, """"];

/*
if !(hasInterface) exitWith {};
waitUntil {player == player};
waitUntil {!isNull (findDisplay 46)};
waitUntil {time >= 5};
*/

/*
_unit = _this select 0;
_unitname = cursorTarget;

while {(cursorTarget iskindof "Man") && (alive cursorTarget)} do {
	_addactstring = format ["Check %1",_unitname];
	_unit addaction [_addactstring,"ovhealth\checkcursor.sqf"];
};
sleep 0.5;
/*