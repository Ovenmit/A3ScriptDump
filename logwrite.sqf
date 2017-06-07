//Paste in trigger activate: nul = [] execVM "scripts\logwrite.sqf";
if (!isServer) exitWith {};
{
	_x groupChat "Saving Info...";
	_unitname = name _x;
	_loadout = getUnitLoadout _x;
	_localpos = getposATL _x;
	
	//hint format["Unit: %1 | Loadout: %2 | Location: %3",_unitname,_loadout,_localpos];
	//copyToClipboard str "unit: " + _unitname + "Loadout: " + _loadout + "Position: " + _localpos;
	diag_log format["Unit: %1 | Loadout: %2 | Location: %3",_unitname,_loadout,_localpos];

} forEach allPlayers;




