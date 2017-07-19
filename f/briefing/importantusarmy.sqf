///======================Ajouter une faction au briefing du template=====
// BRIEFING exemple : USMC_D
// si vous utilisez une faction issue d'un mod il faudra créer un fichier "nomdefaction.sqf" dans le repertoire f\briefing\
// et ajouter ce code au fichier briefing.sqf à la racine de la mission en remplaçant rhs_faction_usmc_d par le code que le mod donne à la faction

if (_unitfaction in ["rhs_faction_usmc_d"]) exitwith {

#include "f\briefing\f_rhs_faction_usmc_d.sqf"

// DEBUG
	if (f_param_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// =================================================================