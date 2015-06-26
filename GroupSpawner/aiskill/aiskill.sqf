//setSkill for ai on map from editor
//AI Skill  
{
//_x setUnitAbility 0.1;
_x setSkill ["aimingspeed", 0.1];
_x setSkill ["spotdistance", 0.1];
_x setSkill ["aimingaccuracy", 0.1];
_x setSkill ["aimingshake", 0.1];
_x setSkill ["spottime", 0.1];
_x setSkill ["spotdistance", 0.5];
_x setSkill ["commanding", 1];
_x setSkill ["general", 1];

} forEach allUnits;

Hint "<= AI set to custom skillset =>"