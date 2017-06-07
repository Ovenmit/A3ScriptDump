//this addAction["<t color='#ff1111'>Detonate</t>", "scripts\ied.sqf"];
if (!isServer) exitwith {};

_unit = _this select 0;
_bomb = "Bo_GBU12_LGB_MI10";

_bomb createVehicle ( position _unit );
_unit setDammage 1;

