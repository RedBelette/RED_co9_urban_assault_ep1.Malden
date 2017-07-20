if (!hasInterface) exitWith {}; //Exit if not a player.

f_var_viewDistance_default = 8000;
[] execVM "f\dynamicViewDistance\f_setViewDistanceLoop.sqf";

playMusic "NoSunshine";

// -->
// load sequence 1
seq1 = true;
// push to all clients and server
publicVariableServer "seq1";

sleep 3;

// SEQ1
camera = "camera" camcreate getPos(camseq1);
camera cameraEffect ["internal", "back"];
camera camSetPos getPos(camseq1);
camera camSetTarget millerseq1;
camera camSetFocus [50, 1];
camera camCommit 11;

// Black in
titleCut [" ", "BLACK IN", 2];
sleep 2;

waitUntil {camCommitted camera};

// Black out
titleCut [" ", "BLACK OUT", 2];
sleep 2;

// load sequence 2
seq2 = true;
// push to all clients and server
publicVariableServer "seq2";

// PREPARE SEQ2
camera camSetPos getPos(camseq2_1);
camera camSetTarget camseq2;
camera camCommit 0;

// Black in
titleCut [" ", "BLACK IN", 2];
waitUntil {camCommitted camera};

// SEQ2
camera camSetPos getPos(camseq2);
camera camSetTarget chinookseq2;
camera camSetFocus [100, 3];
camera camCommit 7;
waitUntil {camCommitted camera};

// Black out
titleCut [" ", "BLACK OUT", 2];

sleep 2;

// load sequence 3
seq3 = true;
// push to all clients and server
publicVariableServer "seq3";

// PREPARE SEQ3
camera camSetPos getPos(camseq3);
camera camSetTarget camseq3_1;
camera camCommit 0;

sleep 2;

// Black in
titleCut [" ", "BLACK IN", 2];
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq3_1);
camera camSetTarget carseq3;
camera camSetFocus [-1, -1];
camera camCommit 7;
waitUntil {camCommitted camera};

// -->
// Black out
titleCut [" ", "BLACK OUT", 2];

// load sequence 4
seq4 = true;
// push to all clients and server
publicVariableServer "seq4";

sleep 2;

// PREPARE SEQ4
camera camSetPos getPos(camseq4);
camera camSetTarget unitseq4;
camera camCommit 0;

// Black in
titleCut [" ", "BLACK IN", 2];
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq4_1);
camera camSetTarget unitseq4;
camera camSetFocus [-1, -1];
camera camCommit 7;
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq4_2);
camera camSetTarget unitseq4;
camera camSetFocus [-1, -1];
camera camCommit 7;
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq4_3);
camera camSetTarget unitseq4;
camera camSetFocus [20, 2];
camera camCommit 7;
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq4);
camera camSetTarget unitseq4;
camera camSetFocus [-1, -1];
camera camCommit 7;
waitUntil {camCommitted camera};

// -->
// Black out
titleCut [" ", "BLACK OUT", 2];

// load sequence 5
seq5 = true;
// push to all clients and server
publicVariableServer "seq5";

sleep 2;

// PREPARE SEQ5
camera camSetPos getPos(camseq5);
camera camSetTarget chinookseq5;
camera camCommit 0;

// Black in
titleCut [" ", "BLACK IN", 3];
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq5_1);
camera camSetTarget chinookseq5;
camera camSetFocus [-1, -1];
camera camCommit 7;
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq5_2);
camera camSetTarget chinookseq5;
camera camSetFocus [-1, -1];
camera camCommit 7;
waitUntil {camCommitted camera};

// -->
// Black out
titleCut [" ", "BLACK OUT", 2];

// load sequence 6
seq6 = true;
// push to all clients and server
publicVariableServer "seq6";

sleep 2;

// PREPARE SEQ6
camera camSetPos getPos(camseq6);
camera camSetTarget firstRespawn;
camera camCommit 0;

// Black in
titleCut [" ", "BLACK IN", 3];
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq6_1);
camera camSetTarget firstRespawn;
camera camSetFocus [-1, -1];
camera camCommit 4;
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq6_2);
camera camSetTarget firstRespawn;
camera camSetFocus [-1, -1];
camera camCommit 4;
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq6_3);
camera camSetTarget firstRespawn;
camera camSetFocus [-1, -1];
camera camCommit 4;
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq6_4);
camera camSetTarget firstRespawn;
camera camSetFocus [-1, -1];
camera camCommit 4;
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq6_5);
camera camSetTarget firstRespawn;
camera camSetFocus [-1, -1];
camera camCommit 4;
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq6_6);
camera camSetTarget firstRespawn;
camera camSetFocus [-1, -1];
camera camCommit 4;
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq6_7);
camera camSetTarget firstRespawn;
camera camSetFocus [-1, -1];
camera camCommit 4;
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq6_8);
camera camSetTarget firstRespawn;
camera camSetFocus [-1, -1];
camera camCommit 4;
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq6_9);
camera camSetTarget firstRespawn;
camera camSetFocus [-1, -1];
camera camCommit 4;
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq6_10);
camera camSetTarget firstRespawn;
camera camSetFocus [-1, -1];
camera camCommit 4;
waitUntil {camCommitted camera};

camera camSetPos getPos(camseq6_11);
camera camSetTarget firstRespawn;
camera camSetFocus [-1, -1];
camera camCommit 4;
waitUntil {camCommitted camera};


// END

// Black out
titleCut [" ", "BLACK OUT", 2];
sleep 2;

f_var_viewDistance_default = 4500;
[] execVM "f\dynamicViewDistance\f_setViewDistanceLoop.sqf";

playMusic "";

camDestroy camera;
player cameraEffect ["terminate","back"];
