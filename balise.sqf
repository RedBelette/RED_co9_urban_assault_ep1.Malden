actionid = _this select 2;
helico = _this select 0;
[120,
[],
{
	_this execVM "baliseok.sqf";

	helico removeAction actionid;
},
{hint "Installation annulé!"},
"Installation de la balise, 2 minutes d'attente."
] call ace_common_fnc_progressBar;