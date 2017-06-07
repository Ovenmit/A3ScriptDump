//put _unit in unit init: nul = [this,50] execVM "scripts\throwsmoke.sqf";

if (!isServer) exitWith {};

_unit = _this select 0;
_unitradius = _this select 1;
_unitname = name _unit;
_trigstr = format ["'SmokeShellRed' createVehicle position %1;",_unit];
//_trigstr = format ["hint format ['Unit: %1'];",_unit];
//hint _trigstr;

_trig = createTrigger ["EmptyDetector", getPos _unit];
_trig setTriggerArea [_unitradius, _unitradius, 0, false];
_trig setTriggerActivation ["WEST", "PRESENT", true];
_trig setTriggerStatements ["this",_trigstr,""];