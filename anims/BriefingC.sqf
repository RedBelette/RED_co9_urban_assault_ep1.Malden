if (isServer) then {
	[(_this select 0),"Acts_C_in1_briefing" ] remoteExec ["switchMove"] ;
	(_this select 0) disableAI "ANIM";
};