/*
mission init: 
All units of side (EAST, WEST, ETC)

{if (side _x == WEST) then { 
 nul = [_x,"<faceoption>","<speaker>"] execVM "scripts\faceset.sqf"; 
}} foreach allUnits;

{if (side _x == WEST || side _x == civilian || side _x == resistance ) then {  
  nul = [_x,"<faceoption>","<speaker>"] execVM "scripts\faceset.sqf"; 
 }else { 
  nul = [_x,"<faceoption>","<speaker>"] execVM "scripts\faceset.sqf"; 
 }} foreach allunits;

OR unit init:
nul = [this,"<faceoption>","<speaker>"] execVM "scripts\faceset.sqf";

OR Paste in Spawn AI module expression: 
{ nul = [_x,"<faceoption>","<speaker>"] execVM "scripts\faceset.sqf";} foreach (units (_this select 0));

OR in trigger on activation field:
{nul = [_x,"<faceoption>","<speaker>"] execVM "scripts\faceset.sqf"} foreach thislist;

Options:
Faces:
asian
camoasian
african
camoafrican
persian
med
camomed
eu
camoeu
mix
camomix

Speaker:
fre
freng
far
chi
uke
use
alt
*/
if (!isServer) exitWith {};

_unit = _this select 0;
_faceset = _this select 1;
_speakset = _this select 2;

uiSleep 0.5;

switch (_faceset) do
{	
	case "asian":
	{
		_faces = selectRandom 
		[
			"AsianHead_A3_01",
			"AsianHead_A3_02",
			"AsianHead_A3_03",
			"AsianHead_A3_04",
			"AsianHead_A3_05",
			"AsianHead_A3_06",
			"AsianHead_A3_07"
		];
		
		[_unit, _faces] remoteExec ["setFace", 0, _unit];
	};
	
	case "camoasian":
	{
		_faces = selectRandom 
		[
			"CamoHead_Asian_01_F",
			"CamoHead_Asian_02_F",
			"CamoHead_Asian_03_F"
		];
		
		[_unit, _faces] remoteExec ["setFace", 0, _unit];
	};
	
	case "african":
	{
		_faces = selectRandom 
		[
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
		
		[_unit, _faces] remoteExec ["setFace", 0, _unit];
	};
	
	case "camoafrican":
	{
		_faces = selectRandom 
		[
			"CamoHead_African_01_F",
			"CamoHead_African_02_F",
			"CamoHead_African_03_F"
		];
		
		[_unit, _faces] remoteExec ["setFace", 0, _unit];
	};
	
	case "persian":
	{
		_faces = selectRandom 
		[
			"PersianHead_A3_01",
			"PersianHead_A3_02",
			"PersianHead_A3_03"
		];
		
		[_unit, _faces] remoteExec ["setFace", 0, _unit];
	};
	
	case "med":
	{
		_faces = selectRandom 
		[
			"GreekHead_A3_01",
			"GreekHead_A3_02",
			"GreekHead_A3_03",
			"GreekHead_A3_04",
			"GreekHead_A3_05",
			"GreekHead_A3_06",
			"GreekHead_A3_07",
			"GreekHead_A3_08",
			"GreekHead_A3_09"
		];
		
		[_unit, _faces] remoteExec ["setFace", 0, _unit];
	};
	
	case "camomed":
	{
		_faces = selectRandom 
		[
			"CamoHead_Greek_01_F",
			"CamoHead_Greek_02_F",
			"CamoHead_Greek_03_F",
			"CamoHead_Greek_04_F",
			"CamoHead_Greek_05_F",
			"CamoHead_Greek_06_F",
			"CamoHead_Greek_07_F",
			"CamoHead_Greek_08_F",
			"CamoHead_Greek_09_F"
		];
		
		[_unit, _faces] remoteExec ["setFace", 0, _unit];
	};
	
	case "eu":
	{
		_faces = selectRandom 
		[
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
		
		[_unit, _faces] remoteExec ["setFace", 0, _unit];
	};
	
	case "camoeu":
	{
		_faces = selectRandom 
		[
			"CamoHead_White_01_F",
			"CamoHead_White_02_F",
			"CamoHead_White_03_F",
			"CamoHead_White_04_F",
			"CamoHead_White_05_F",
			"CamoHead_White_06_F",
			"CamoHead_White_07_F",
			"CamoHead_White_08_F",
			"CamoHead_White_09_F",
			"CamoHead_White_10_F",
			"CamoHead_White_11_F",
			"CamoHead_White_12_F",
			"CamoHead_White_13_F",
			"CamoHead_White_14_F",
			"CamoHead_White_15_F",
			"CamoHead_White_16_F",
			"CamoHead_White_17_F",
			"CamoHead_White_18_F",
			"CamoHead_White_19_F",
			"CamoHead_White_20_F",
			"CamoHead_White_21_F"
		];
		
		[_unit, _faces] remoteExec ["setFace", 0, _unit];
	};
	
	case "mix":
	{
		_faces = selectRandom 
		[
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
			"PersianHead_A3_01",
			"PersianHead_A3_02",
			"PersianHead_A3_03",
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
			"WhiteHead_21",
			"AsianHead_A3_01",
			"AsianHead_A3_02",
			"AsianHead_A3_03",
			"AsianHead_A3_04",
			"AsianHead_A3_05",
			"AsianHead_A3_06",
			"AsianHead_A3_07",
			"TanoanHead_A3_03",
			"TanoanHead_A3_04",
			"GreekHead_A3_01",
			"GreekHead_A3_02",
			"GreekHead_A3_03",
			"GreekHead_A3_04",
			"GreekHead_A3_05",
			"GreekHead_A3_06",
			"GreekHead_A3_07",
			"GreekHead_A3_08",
			"GreekHead_A3_09",
			"AfricanHead_02",
			"AfricanHead_03",
			"TanoanHead_A3_07",
			"TanoanHead_A3_01",
			"TanoanHead_A3_06",
			"TanoanHead_A3_08",
			"AfricanHead_01"
		];
		
		[_unit, _faces] remoteExec ["setFace", 0, _unit];
	};
	
	case "camomix":
	{
		_faces = selectRandom 
		[
			"PersianHead_A3_04_sa",
			"PersianHead_A3_04_l",
			"PersianHead_A3_04_a",
			"GreekHead_A3_10_a",
			"GreekHead_A3_10_l",
			"GreekHead_A3_10_sa",
			"WhiteHead_22_a",
			"WhiteHead_22_l",
			"WhiteHead_22_sa"
		];
		
		[_unit, _faces] remoteExec ["setFace", 0, _unit];
	};
	
	default
	{
		
	};
};

switch (_speakset) do
{	
	case "fre":
	{
		_voices = selectRandom 
		[
			"male01fre",
			"male02fre",
			"male03fre"
		];
		
		[_unit, _voices] remoteExec ["setSpeaker", 0, _unit];
	};
	
	case "freng":
	{
		_voices = selectRandom 
		[
			"male01engfre",
			"male02engfre"
		];
		
		[_unit, _voices] remoteExec ["setSpeaker", 0, _unit];
	};

	case "far":
	{
		_voices = selectRandom 
		[
			"male01per",
			"male02per",
			"male03per"
		];
		
		[_unit, _voices] remoteExec ["setSpeaker", 0, _unit];
	};

	case "chi":
	{
		_voices = selectRandom 
		[
			"male01chi",
			"male02chi",
			"male03chi"
		];
		
		[_unit, _voices] remoteExec ["setSpeaker", 0, _unit];
	};

	case "uke":
	{
		_voices = selectRandom 
		[
			"male01engb",
			"male02engb",
			"male03engb",
			"male04engb",
			"male05engb"
		];
		
		[_unit, _voices] remoteExec ["setSpeaker", 0, _unit];
	};

	case "use":
	{
		_voices = selectRandom 
		[
			"male01eng",
			"male02eng",
			"male03eng",
			"male04eng",
			"male05eng",
			"male06eng",
			"male07eng",
			"male08eng",
			"male09eng",
			"male10eng",
			"male11eng",
			"male12eng"
		];
		
		[_unit, _voices] remoteExec ["setSpeaker", 0, _unit];
	};

	case "alt":
	{
		_voices = selectRandom 
		[
			"male01gre",
			"male02gre",
			"male03gre",
			"male04gre",
			"male05gre",
			"male06gre"
		];
		
		[_unit, _voices] remoteExec ["setSpeaker", 0, _unit];
	};
	
	default
	{
		
	};
};

//Also works==================
/*
_faces = [
		"GreekHead_A3_10_sa",
		"WhiteHead_22_sa",
		"PersianHead_A3_04_sa"] call BIS_fnc_selectRandom;
		//bis suggests use selectRandom rather
*/