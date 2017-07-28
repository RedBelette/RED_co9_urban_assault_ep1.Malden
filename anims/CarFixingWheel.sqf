if (isServer) then {
	[(_this select 0),"Acts_carFixingWheel" ] remoteExec ["switchMove"] ;
	(_this select 0) disableAI "ANIM";
};