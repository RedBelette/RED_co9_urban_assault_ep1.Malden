if (isServer) then {
	[[(_this select 0),"SIT", "ASIS"],BIS_fnc_ambientAnim ] remoteExec ["call"] ;
	(_this select 0) disableAI "ANIM";
};