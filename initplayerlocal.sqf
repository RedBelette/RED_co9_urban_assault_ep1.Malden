 _video = ["media\video\tgv.ogv"] spawn BIS_fnc_titlecard; waitUntil {!(isNil "BIS_fnc_titlecard_finished")};

 ////===========Execute les messages d'acceuil========
[] execVM "welcome.sqf";
[] execVM "popup.sqf";
///Texte d'intro
[] execVM "f\introtext.sqf";