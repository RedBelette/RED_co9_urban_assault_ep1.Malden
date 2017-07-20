
sleep 7;
// Display infos message
_handle = [parseText format [ "<t align='left' size='1.8'>%1</t>", toUpper "LA TEAM TGV VOUS PRESENTE"], [0,0,1,1], [10,1], 3, 0.7, 0] spawn BIS_fnc_textTiles;
// Waiting info message
waitUntil {scriptDone _handle};

// Display name of the mission and author
_handle = [parseText format [ "<t align='right' size='1.2'><t font='PuristaBold' size='2'>""%1""</t><t>%2</t>", toUpper "Urban Assault Ep1", "by RedBelette"], [0,0,1,1], [10,1], 3, 0.7, 0] spawn BIS_fnc_textTiles;
waitUntil {scriptDone _handle};

sleep 4;
// Display infos message
_handle = [parseText format [ "<t align='left' size='1.8'>%1</t>", toUpper "Phase de préparation"], [1,1,1,1], [10,1], 3, 0.7, 0] spawn BIS_fnc_textTiles;
waitUntil {scriptDone _handle};

sleep 4;
_handle = [parseText format [ "<t align='left' size='1.8'>%1</t>", toUpper "Chargement des véhicules"], [0,0,1,1], [10,1], 3, 0.7, 0] spawn BIS_fnc_textTiles;
waitUntil {scriptDone _handle};

sleep 8;
_handle = [parseText format [ "<t align='left' size='1.8'>%1</t>", toUpper "Equipe de miller recoit les inscructions"], [0,0,1,1], [10,1], 3, 0.7, 0] spawn BIS_fnc_textTiles;
waitUntil {scriptDone _handle};