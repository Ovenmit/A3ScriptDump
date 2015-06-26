Hint " click the target area on the map";
openMap true;

MapClicked = false;
//onMapSingleClick {nul = [_grpspwn] execVM "grpspawn.sqf"; MapClicked = true};
onMapSingleClick "'B_Soldier_F' createUnit [_pos, group Player]; true;";

waituntil {MapClicked};
MapClicked = false;   //reset the variable for if you want to do it again