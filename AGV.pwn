/*
  __      _      __           _     _ 
 | _|    / \    |_ |  _ __   | |_  (_)
 | |    / _ \    | | | '_ \  | __| | |
 | |   / ___ \   | | | | | | | |_  | |
 | |  /_/   \_\  | | |_| |_|  \__| |_|
 |__|           |__|                  
  __    ____   __          _   
 | _|  / ___| |_ |   ___  | |_ 
 | |  | |  _   | |  / _ \ | __|
 | |  | |_| |  | | |  __/ | |_ 
 | |   \____|  | |  \___|  \__|
 |__|         |__|              
  __  __     __  __          _       _          _              
 | _| \ \   / / |_ |   ___  | |__   (_)   ___  | |   ___   ___ 
 | |   \ \ / /   | |  / _ \ | '_ \  | |  / __| | |  / _ \ / __|
 | |    \ V /    | | |  __/ | | | | | | | (__  | | |  __/ \__ \
 | |     \_/     | |  \___| |_| |_| |_|  \___| |_|  \___| |___/
 |__|           |__|                                             
   _                 ____    _                 
 | |__    _   _    / ___|  (_)  _ __     __ _ 
 | '_ \  | | | |   \___ \  | | | '_ \   / _` |
 | |_) | | |_| |    ___) | | | | | | | | (_| |
 |_.__/   \__, |   |____/  |_| |_| |_|  \__,_|
          |___/                               
*/
/* ----------------[Includes]---------------- */
#include <a_samp>
/* ----------------[Publics]---------------- */
public OnFilterScriptInit()
{
    print("AGV filterscript loaded");
    print("Github: https://github.com/realSina/");
    print("Author: Sina");
    return 1;
}
public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	new Float:VhPos[3];
	GetVehiclePos(vehicleid,VhPos[0],VhPos[1],VhPos[2]);
	if(!IsPlayerInRangeOfPoint(playerid,10.0,VhPos[0],VhPos[1],VhPos[2]))
	{
	    SetVehiclePos(vehicleid,VhPos[0],VhPos[1],VhPos[2]);
	    GetPlayerPos(playerid,VhPos[0],VhPos[1],VhPos[2]);
	    SetPlayerPos(playerid,VhPos[0],VhPos[1],VhPos[2]);
	    SendClientMessage(playerid,0xA9C4E400,"Error: This vehicle isn't synced with server.");
	    return 1;
	}	
	return 1;
}
