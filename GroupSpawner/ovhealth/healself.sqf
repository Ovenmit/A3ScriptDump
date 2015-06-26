_unit = _this select 1;
_unitname = name _unit;
_unit setDammage 0;
_unit playMove "AinvPknlMstpSlayWrflDnon_medic"; 

hint format ["%1: You have been healed!", _unitname];