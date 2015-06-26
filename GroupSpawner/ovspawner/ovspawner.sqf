_stand = _this select 0;
_caller = _this select 1;

_stand addaction ["Spawn Enemy","ovspawner\ovenemyspawn.sqf"];
_stand addaction ["Spawn Friendly","ovspawner\ovfriendspawn.sqf"];