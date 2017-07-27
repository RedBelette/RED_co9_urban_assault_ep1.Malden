// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// FACTION: NATO

// ====================================================================================

// TASKS
// The code below creates tasks. Two (commented-out) sample tasks are included.
// Note: tasks should be entered into this file in reverse order.

// _task2 = player createSimpleTask ["OBJ_2"];
// _task2 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task2 setSimpleTaskDestination WAYPOINTLOCATION;
// _task2 setTaskState "Created";

// _task1 = player createSimpleTask ["OBJ_1"];
// _task1 setSimpleTaskDescription ["IN DEPTH OBJECTIVE DESCRIPTION", "SHORT OBJECTIVE DESCRIPTION", "WAYPOINT TEXT"];
// _task1 setSimpleTaskDestination WAYPOINTLOCATION;
// _task1 setTaskState "Created";

// ====================================================================================

// NOTES: CREDITS
// The code below creates the administration sub-section of notes.

_cre = player createDiaryRecord ["diary", ["Credits","
<br/>
Remercions en premier lieu la team des vioks de la TGV. --> www.teamtgv.com
<br/>
Mais remercions également la section arma 3, dévoué et toujours disponible pour faire de cette mission une réussite !
<br/>

<br/>
Enfin, remercions Sajkheirn pour nous avoir donner des explications sur la composition des groupes d'assaut et leurs fonctionnements réels.
<br/>

<br/>
Bon, encore un dernier, merci monsieur H d'apprécier le briefing à ce point !
<br/><br/>
<img image='media\img\decollage.jpg' width='300' height='200'/>
<br/><br/>
<br/><br/>
Made with F3 (http://www.ferstaberinde.com/f3/en/)
"]];

// ====================================================================================

// NOTES: ADMINISTRATION
// The code below creates the administration sub-section of notes.

_adm = player createDiaryRecord ["diary", ["Administration","
<br/>
L'administrateur est le roi sur cette mission. Zeus est installer et un système de respawn est configurer pour lui permettre de faire ce qu'il veut de ses cobayes.
"]];

// ====================================================================================

// NOTES: EXECUTION
// The code below creates the execution sub-section of notes.

_exe = player createDiaryRecord ["diary", ["Execution","
<br/>
<font size='18'>COMMANDER'S INTENT</font>
<br/>
Procéder à une approche tactique avec l'équipe 300 et laissez 600 en couverture. Choisissez méticuleusement vos angles d'attaques. Charger 600 avec l'arme anti aérienne et guetter le moindre mouvement de l’hélicoptère de combat. A la moindre détection, nous savons qu'ils déploieront leurs forces partout dans le secteur. Nous devons nous préparer à un affrontement brutal. Particulièrement si l'hélicoptère décolle. Dans ce cas, l'équipe 600, bien positionné sera votre seul chance de survie.
<br/>

<br/>
Les missions secondaires sont sur votre chemin, vous pouvez les exécuter au fil de l'eau.
<br/><br/>
<font size='18'>MOVEMENT PLAN</font>
<br/>
L'équipe de Miller est venu vous sécuriser un avant poste de l'autre coté de l'île. Une fois sur place, vous disposez de 3 véhicules bien équipé pour démarrer votre mission. Dirigez vous vers le point alpha pour retrouver et placer une balise sur notre appareil perdu. Placer votre équipe 300 au plus proche de la caserne militaire et l'équipe 600 en couverture sur l'hélicoptère. Placer Charlie en sécurité pour coordonner les équipes, les réapprovisionnements et les soins. Détruisez l'hélicoptère d'assaut avant qu'il ne décolle avec l'équipe 300, dans le cas contraire, l'équipe 600 pourra le détruire grâce à l'arme anti-aérienne disponible dans l'un des véhicules.
<br/><br/>
<font size='18'>FIRE SUPPORT PLAN</font>
<br/>
L'équipe de commandement, nommé Charlie, doit rester le plus possible en sécurité. Il aura pour mission d'envoyer son docteur ou le préposé en réapprovisionnement en soutient au équipe d'assaut. Le commandement doit diriger cette équipe en bon père de famille et imaginer un plan pour veiller à la sécurité de chacun. Chacun des membres de l'équipe de commandement peut être détacher dans une zone ou dans une équipe. Ils sont tous équiper d'un microDARG et d'une radio longue portée.
<br/><br/>
<font size='18'>SPECIAL TASKS</font>
<br/>
Ce n'est pas dans nos habitudes, mais nous pouvons mettre la main sur un fonctionnaire de l'aéroport afin de lui soutirer quelques informations. Si vous ne le faites pas, une équipe s'en chargera. Pensez juste à le laissez en vie.
"]];

// ====================================================================================

// NOTES: MISSION
// The code below creates the mission sub-section of notes.

_mis = player createDiaryRecord ["diary", ["Mission","
<br/>
Votre mission principal est de prendre d'assaut la base militaire (AP1) pour y détruire l'hélicoptère d'assaut mais également de saboter le centre de communication (AP2) situer non loin de là.
<br/><br/>
<img image='media\img\kajman.jpg' width='300' height='200'/>
<br/><br/>
<br/><br/>
<img image='media\img\ap1.jpg' width='300' height='200'/>
<br/><br/>
<br/>

<br/>
Vous avez également deux missions connexe:
<br/>
1) Il vous ait demandé de retrouver un hélicoptère allié qui s'est craché dans la zone. Vous le trouverez probablement dans la zone Alpha. Vous ne devriez pas rencontrer de résistance particulière. Une fois retrouvé, installer lui une balise pour permettre à une autre équipe de venir le récupérer.
<br/><br/>
<img image='media\img\alpha.jpg' width='300' height='200'/>
<br/><br/>
<br/>

<br/>
2) Prenez contact avec un fonctionnaire de l'aéroport. Vous pouvez soit l'embarquer (serflex obligatoire), soit nous confirmer sa présence et le laisser sur place, une équipe spécialiser viendra le récupérer.
<br/><br/>
<img image='media\img\aéroport.jpg' width='300' height='200'/>
<br/><br/>
<br/><br/>
<img image='media\img\bureau.jpg' width='300' height='200'/>
<br/><br/>
"]];

// ====================================================================================

// NOTES: SITUATION
// The code below creates the situation sub-section of notes.

_sit = player createDiaryRecord ["diary", ["Situation","
<br/>
Le CSAT détient la partie nord de Malden où se trouve l'aéroport principal de l'île. Il s'agit de la plus grande source de financement légale du secteur. Si nous voulons reprendre le contrôle de Malden, nous ne pouvons pas laisser notre ennemi prospérer.
<br/><br/>
<font size='18'>ENEMY FORCES</font>
<br/>
L'aéroport est protéger par la caserne militaire situé à proximité, nous supposons qu'ils déploieront leurs forces sur tout le secteur à la moindre mise en alerte. Nos informateur remonte la présence d'un hélicoptère de combat lourdement armée, il s'agit de la menace la plus sérieuse sur le terrain, nous devrions le détruire avant qu'il ne décolle.
<br/><br/>
<img image='media\img\ap2véhicules1.jpg' width='300' height='200'/>
<br/><br/>
<br/><br/>
<img image='media\img\ap2véhicule2.jpg' width='300' height='200'/>
<br/><br/>
<br/><br/>
<img image='media\img\kajman.jpg' width='300' height='200'/>
<br/><br/>
<br/><br/>
<font size='18'>FRIENDLY FORCES</font>
<br/>
L'équipe de Miller est partis sécuriser un avant poste. Celui-ci nous servira de point de ravitaillement. 3 Véhicules seront également présent avec beaucoup de matériel à leurs bord. Vous pouvez noter la présence d'un lance missile anti-aérien.
"]];

// ====================================================================================