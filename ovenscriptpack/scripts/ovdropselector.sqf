/*
Altitude drope selector Script - ovdropselector.sqf
By Ovenmit

Need to place a marker
this addAction ["Drop - *ALTITUDE*","scripts/ovdropselector.sqf",["*MARKER*",*ALTITUDE*]];

eg
this addAction ["Drop - 500m","scripts\ovdropselector.sqf",["jumpmkr",500],1.5,true,true,"","true",4,false,"",""];
this addAction ["Drop - 1000m","scripts\ovdropselector.sqf",["jumpmkr",1000],1.5,true,true,"","true",4,false,"",""];
this addAction ["Drop - 1500m","scripts\ovdropselector.sqf",["jumpmkr",1500],1.5,true,true,"","true",4,false,"",""];
this addAction ["Drop - 2000m","scripts\ovdropselector.sqf",["jumpmkr",2000],1.5,true,true,"","true",4,false,"",""];
this addAction ["Drop - 2500m","scripts\ovdropselector.sqf",["jumpmkr",2500],1.5,true,true,"","true",4,false,"",""];
this addAction ["Drop - 3000m","scripts\ovdropselector.sqf",["jumpmkr",3000],1.5,true,true,"","true",4,false,"",""];
this addAction ["Drop - 3500m","scripts\ovdropselector.sqf",["jumpmkr",3500],1.5,true,true,"","true",4,false,"",""];
this addAction ["Drop - 4000m","scripts\ovdropselector.sqf",["jumpmkr",4000],1.5,true,true,"","true",4,false,"",""];
this addAction ["Drop - 4500m","scripts\ovdropselector.sqf",["jumpmkr",4500],1.5,true,true,"","true",4,false,"",""];
this addAction ["Drop - 5000m","scripts\ovdropselector.sqf",["jumpmkr",5000],1.5,true,true,"","true",4,false,"",""];

==================================
*/
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