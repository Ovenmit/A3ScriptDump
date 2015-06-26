_InjuredUnit = cursorTarget;

if ((isNull cursorTarget) || !(cursorTarget iskindof "Man")) exitWith {};
if ((cursorTarget distance player) > 2) exitWith {};

_HeadWound = _InjuredUnit getHitPOintDamage "HitHead";
_BodyWound = _InjuredUnit getHitPOintDamage "HitBody";
_HandWound = _InjuredUnit getHitPOintDamage "HitHands";
_LegWound = _InjuredUnit getHitPOintDamage "HitLegs";
_GeneralHealth = if damage > 0 then [{"Injured"},{"Healthy"}];

/*
if ((_GeneralHealth = 0)) then 
{
	_HealthStatus = "Healthy";
} 
else
{
	exitWith {};
};
*/

hint format ["%1:\nGeneral Health: %2 \nHead: %3 \nBody: %4 \nHands: %5 \nLegs: %6", _InjuredUnit,_HealthStatus,_HeadWound,_BodyWound,_HandWound,_LegWound];
