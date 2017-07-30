_actionid = _this select 2;
_helico = _this select 0;
hint 'coucou';
[20,
[],
{
	_this execVM "baliseok.sqf";

	_helico removeAction _actionid;
},
{hint "Installation annulé!"},
"Installation d'une balise, 2 minutes d'attente."
] call ace_common_fnc_progressBar;