//Flag script for RM Script
//By Ovenmit
//paste in object init
// parameters [this object,addaction distance,"*MARKERNAME*"]
//nul = [this,4,"jumpmkr"] execVM "scripts\rmtrainingflag.sqf";
_object = _this select 0;
_dist = _this select 1;
_marker = _this select 2;

dropFunction ={
    waitUntil { not isNull player };
	_backpack = backpack player;
	_chutes = [
		"ACE_NonSteerableParachute",
		"B_Parachute",
		"CUP_T10_Parachute_backpack"
		];

	if (_backpack in _chutes) then {
		_ranDir = random 359;
		_markname = _this select 3 select 0;
		_markpos = getMarkerPos _markname;
		_altitude = _this select 3 select 1;

		player setPos [(_markpos select 0)-10*sin(_ranDir),(_markpos select 1)-10*cos(_ranDir),+ _altitude];
		} else {hint "you dont have a parachute"};
};

_object addAction ["<t color='#FF0000'>==Magic Flag==</t>", {},[],6,true,true,"","true",_dist,false,"",""];

_object addAction ["<t color='#00ff00'>==Skip time==</t>", {},[],5,true,true,"","true",_dist,false,"",""];
_object addAction ["Skip 1 HR",{skipTime 1;},[],5,true,true,"","true",_dist,false,"",""];
_object addAction ["Skip 12 HR",{skipTime 12;},[],5,true,true,"","true",_dist,false,"",""];

_object addAction ["<t color='#00ff00'>==Paradrop==</t>", {},[],4,true,true,"","true",_dist,false,"",""];
//Original: _object addAction ["Drop - 500m","scripts\ovdropselector.sqf",[_marker,5000],3,true,true,"","true",4,false,"",""];
_object addAction ["Drop - 500m",{call dropFunction;},[_marker,500],3,true,true,"","true",_dist,false,"",""]; 
_object addAction ["Drop - 1000m",{call dropFunction;},[_marker,1000],3,true,true,"","true",_dist,false,"",""]; 
_object addAction ["Drop - 1500m",{call dropFunction;},[_marker,1500],3,true,true,"","true",_dist,false,"",""]; 
_object addAction ["Drop - 2000m",{call dropFunction;},[_marker,2000],3,true,true,"","true",_dist,false,"",""]; 
_object addAction ["Drop - 2500m",{call dropFunction;},[_marker,2500],3,true,true,"","true",_dist,false,"",""]; 
_object addAction ["Drop - 3000m",{call dropFunction;},[_marker,3000],3,true,true,"","true",_dist,false,"",""]; 
_object addAction ["Drop - 3500m",{call dropFunction;},[_marker,3500],3,true,true,"","true",_dist,false,"",""]; 
_object addAction ["Drop - 4000m",{call dropFunction;},[_marker,4000],3,true,true,"","true",_dist,false,"",""]; 
_object addAction ["Drop - 4500m",{call dropFunction;},[_marker,4500],3,true,true,"","true",_dist,false,"",""]; 
_object addAction ["Drop - 5000m",{call dropFunction;},[_marker,5000],3,true,true,"","true",_dist,false,"",""];


