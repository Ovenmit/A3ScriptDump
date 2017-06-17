/*
//By Ovenmit
//paste in init.sqf
All units of side (EAST, WEST, resistance, civilian, LOGIC)
{nul = [_x] execVM "scripts\setnat.sqf";}forEach allUnits;
*/
if (!isServer) exitWith {};

_unit = _this select 0;

uiSleep 0.5;

_eastfaces = selectRandom [
	"WhiteHead_01",
	"WhiteHead_02",
	"WhiteHead_03",
	"WhiteHead_04",
	"WhiteHead_05",
	"WhiteHead_06",
	"WhiteHead_07",
	"WhiteHead_08",
	"WhiteHead_09",
	"WhiteHead_10",
	"WhiteHead_11",
	"WhiteHead_12",
	"WhiteHead_13",
	"WhiteHead_14",
	"WhiteHead_15",
	"WhiteHead_16",
	"WhiteHead_17",
	"WhiteHead_18",
	"WhiteHead_19",
	"WhiteHead_20",
	"WhiteHead_21"
];

_westfaces = selectRandom [
	"TanoanHead_A3_03",
	"TanoanHead_A3_04",
	"AfricanHead_02",
	"AfricanHead_03",
	"TanoanHead_A3_07",
	"TanoanHead_A3_01",
	"TanoanHead_A3_06",
	"TanoanHead_A3_08",
	"AfricanHead_01"
];
		
_eastspeakers = selectRandom [
	"male01engfre",
	"male02engfre"
];

_westspeakers = selectRandom [
	"male01fre",
	"male02fre",
	"male03fre"
];

if (side _unit == WEST || side _unit == civilian || side _unit == resistance ) then { 
		[_unit, _westfaces] remoteExec ["setFace", 0, _unit];
		[_unit, _westspeakers] remoteExec ["setSpeaker", 0, _unit];
	}else {
		[_unit, _eastfaces] remoteExec ["setFace", 0, _unit];
		[_unit, _eastspeakers] remoteExec ["setSpeaker", 0, _unit];
	};
