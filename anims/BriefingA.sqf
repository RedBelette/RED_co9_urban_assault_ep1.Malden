if (isServer) then {
	[(_this select 0),"Acts_A_M01_briefing" ] remoteExec ["switchMove"] ;
	(_this select 0) disableAI "ANIM";
};