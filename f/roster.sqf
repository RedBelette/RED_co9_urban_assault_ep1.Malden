/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Author 		: Skippy
//
//Version 		: 3
//
//Released		: 12/08/2014
//
//Description 	: Displays team members (with the possibility to include/exclude IA and the possibility to rename groups) in the diary
//
//
//
//
/*
*****************************************************************************************************************************************
*/

if(isDedicated) exitWith {};

#ifndef Skpp_Roster_Include_AI
#define Skpp_Roster_Include_AI 2
#endif

#ifndef Skpp_Roster_Role
#define Skpp_Roster_Role true
#endif

#ifndef Skpp_Roster_Rank
#define Skpp_Roster_Rank true
#endif

private["_strRank","_strRole","_strGrp","_strColorGrp","_strFinal","_oldGrp","_newGrp","_unitsArr"];

_strRank 		= "";//will contain unit's rank
_strRole 		= "";//will contain unit's role
_strGrp 		= "";//will contain unit's group name
_strColorGrp 	= "";//will contain unit's group color
_strFinal 		= "";//will contain final string to be displayed
_oldGrp 		= grpNull;//group of last checked unit
_newGrp 		= grpNull;//group of current unit
_unitsArr 		= [];//will contain all units that have to be processed


switch(Skpp_Roster_Include_AI) do {
	case 0:{//only players
		{
			if(isPlayer _x) then {
				_unitsArr = _unitsArr + [_x];
			};
		}forEach allUnits;
	};
	case 1:{//both AI and players
		_unitsArr = allUnits;
	};
	case 2:{//only playable units
		if(isMultiplayer) then {
			_unitsArr = playableUnits;
		} else {
			_unitsArr = switchableUnits;
		};
	};
	default{
		_unitsArr = allUnits;
	};
};

{//forEach
	if(side _x == side player) then {
		_newGrp = group _x;
		_strGrp = "";

		if(Skpp_Roster_Rank) then {
			switch(rankID _x) do {
				case 0:{
					_strRank = "Pvt. ";
				};
				case 1:{
					_strRank = "Cpl. ";
				};
				case 2:{
					_strRank = "Sgt. ";
				};
				case 3:{
					_strRank = "Lt. ";
				};
				case 4:{
					_strRank = "Cpt. ";
				};
				case 5:{
					_strRank = "Maj. ";
				};
				case 6:{
					_strRank = "Col. ";
				};
				default{
					_strRank = "Pvt. ";
				};
			};
		};

		if(Skpp_Roster_Role) then {
			_strRole = " - " + getText(configFile >> "CfgVehicles" >> typeOf(_x) >> "displayName");
		};

		if(_newGrp != _oldGrp) then {
			_strGrp = "<br/>" + (groupID(group _x)) + "<br/>";

			switch (side _x) do {
				case EAST:{
					_strColorGrp = "'#990000'";
				};
				case WEST:{
					_strColorGrp = "'#0066CC'";
				};
				case RESISTANCE:{
					_strColorGrp = "'#339900'";
				};
				case CIVILIAN:{
					_strColorGrp = "'#990099'";
				};
			};

			if(((group _x) getVariable "color") != "") then {
				_strColorGrp = (group _x) getVariable "color";
			};
		};

		_strFinal =  _strFinal + "<font color="+_strColorGrp+">"+_strGrp+"</font>" + _strRank + name _x + _strRole + "<br/>";

		_oldGrp = group _x;
	};
}forEach _unitsArr;

player createDiarySubject ["roster","Team Roster"];
player createDiaryRecord ["roster",["Roster",_strFinal]];


