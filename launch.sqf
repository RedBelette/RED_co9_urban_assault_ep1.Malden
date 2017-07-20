// Black out
titleCut [" ", "BLACK OUT", 2];

// Waiting black out
sleep 2;

// Teleport the player on mission area
{player setPos getPos teleportStart;} remoteExec ["bis_fnc_call", 0];
// Start mission load enemies
startMission = true;

// execute intro
_handle = execVM "cutscene\intro.sqf";
execVM "cutscene\introtext.sqf";

// Waiting end intro
waitUntil {scriptDone _handle};

// Display infos message
_handle = [parseText format [ "<t align='center' size='2'>%1</t>", toUpper "EQUIPE DE MILLER A SECURISE L'AVANT POSTE"], [0,0,1,1], [10,1], 3, 0.7, 0] spawn BIS_fnc_textTiles;

// Waiting info message
waitUntil {scriptDone _handle};

// Display infos message
_handle = [parseText format [ "<t align='center' size='2'>%1</t>", toUpper "2 HEURES PLUS TARD"], [0,0,1,1], [10,1], 3, 0.7, 0] spawn BIS_fnc_textTiles;

// skip 2 hours
skipTime 2;

// Waiting info message
waitUntil {scriptDone _handle};

// Display infos message
_handle = [parseText format [ "<t align='center' size='2'>%1</t>", toUpper "VOTRE GROUPE ARRIVE SUR LE THEATRE DES OPERATIONS"], [0,0,1,1], [10,1], 3, 0.7, 0] spawn BIS_fnc_textTiles;

// Waiting info message
waitUntil {scriptDone _handle};

// Black in
titleCut [" ", "BLACK IN", 2];

// Remove action
/*_taskdealer = _this select 0;
_id = _this select 2;
_taskdealer removeAction _id;*/

sleep 2;

// Display name of the mission and author
_handle = [parseText format [ "<t align='right' size='1.2'><t font='PuristaBold' size='1.6'>""%1""</t><t>%2</t>", toUpper "Urban Assault Ep1", "by RedBelette"], true, nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;
