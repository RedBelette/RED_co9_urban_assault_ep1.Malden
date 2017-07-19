if (!hasInterface) exitWith {}; //Exit if not a player.

// load sequence 1
seq1 = true;
// push to all clients and server
publicVariable "seq1";

camera = "camera" camcreate getPos(camseq1);
camera cameraEffect ["internal", "back"];
camera camSetPos getPos(camseq1);
camera camSetTarget millerseq1;
camera camCommit 7;

// Black in
titleCut [" ", "BLACK IN", 2];
sleep 2;

waitUntil {camCommitted camera};

// Black out
titleCut [" ", "BLACK OUT", 2];
sleep 2;

camDestroy camera;
player cameraEffect ["terminate","back"];