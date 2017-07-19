{player setPos getPos teleportStart;} remoteExec ["bis_fnc_call", 0];

// Remove action
_chinok = _this select 0;
_id = _this select 2;
_chinok removeAction _id;