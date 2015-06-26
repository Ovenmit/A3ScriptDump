goons = createGroup east;

Hint " click the target area on the map";
openMap true;

MapClicked = false;
//onMapSingleClick {nul = [_grpspwn] execVM "grpspawn.sqf"; MapClicked = true};
onMapSingleClick "'O_Soldier_F' createUnit [_pos, goons]; true;";

[goons, getMarkerPos "AttackPos", 600 ] call bis_fnc_taskAttack;
[goons, 1] setWaypointSpeed "FULL";
[goons, 1] setWaypointCombatMode "RED";
[goons, 1] setWaypointBehaviour "AWARE";

waituntil {MapClicked};
MapClicked = false;   //reset the variable for if you want to do it again