_wstr = windStr * 100;
_wdir2 = windDir;
_wgust = gusts;

private ["_wdir"];

	if(windDir >= 340 && windDir <= 360 || windDir >= 0 && windDir <= 20) then {_wdir = "N";};
	if(windDir >= 290 && windDir <= 340) then {_wdir = "NW";};
	if(windDir >= 250 && windDir <= 290) then {_wdir = "W";};
	if(windDir >= 200 && windDir <= 250) then {_wdir = "SW";};
	if(windDir >= 160 && windDir <= 200) then {_wdir = "S";};
	if(windDir >= 110 && windDir <= 160) then {_wdir = "SE";};
	if(windDir >= 60 && windDir <= 110) then {_wdir = "E";};
	if(windDir >= 20 && windDir <= 60) then {_wdir = "NE";};
	
	hint format ["Wind Speed: %1 Km/h | Direction: %2 : %3 deg | Gusting: %4",_wstr,_wdir,_wdir2, _wgust];

