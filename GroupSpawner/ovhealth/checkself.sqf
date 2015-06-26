_unit = _this select 1;
_unitname = name _unit;
_InjuredUnit = _unit;

_HeadWound = _InjuredUnit getHitPOintDamage "HitHead";
_BodyWound = _InjuredUnit getHitPOintDamage "HitBody";
_HandWound = _InjuredUnit getHitPOintDamage "HitHands";
_LArmWound = _InjuredUnit getHitPOintDamage "HitLeftArm";
_RArmWound = _InjuredUnit getHitPOintDamage "HitRightArm";
_LLegWound = _InjuredUnit getHitPOintDamage "HitLeftLeg";
_RLegWound = _InjuredUnit getHitPOintDamage "HitRightLeg";

_GeneralHealth = "";

/*
if (damage _InjuredUnit = 0) then {
      _GeneralHealth = "Healthy";
    } else {
      if (damage _InjuredUnit >= 0.5) then {
        _GeneralHealth = "Heavy Injuries";
      } else {
        _GeneralHealth = "Light Injuries";
};
*/

hint format ["%1:\nGeneral Health: %2 \nHead: %3 \nBody: %4 \nHands: %5 \nRight Arm: %6 \nLeft Arm: %7 \nRight Leg: %8 \nLeft Leg: %9", _InjuredUnit,_GeneralHealth,_HeadWound,_BodyWound,_HandWound,_RArmWound,_LArmWound,_RLegWound,_LLegWound];