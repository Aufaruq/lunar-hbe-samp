#include <YSI_Coding\y_hooks>

new PlayerText: AufaCintaLunar[MAX_PLAYERS][13];

stock ShowHbeaufa(playerid) {
    for(new i = 0; i < 13; i++)
    {
        PlayerTextDrawShow(playerid, AufaCintaLunar[playerid][i]);
    }
}

stock UpdateHBE(playerid) {
    if (PlayerData[playerid][pSpawned] && !PlayerData[playerid][pTogHud]) {

        new Float:aufalapar, Float:aufahaus, Float:stress;
        new str[300];
        GetPlayerHealth(playerid, PlayerData[playerid][pHealth]);

        //getplayerping
        format(str, sizeof str, "%dms", GetPlayerPing(playerid));
		PlayerTextDrawSetString(playerid, AufaCintaLunar[playerid][11], str);
		PlayerTextDrawShow(playerid, AufaCintaLunar[playerid][11]);

        aufalapar = PlayerData[playerid][pHunger] * 40.0/100;
		PlayerTextDrawTextSize(playerid, AufaCintaLunar[playerid][6], aufalapar, 5.0);
		PlayerTextDrawShow(playerid, AufaCintaLunar[playerid][6]);

        aufahaus = PlayerData[playerid][pThirst] * 40.0/100;
		PlayerTextDrawTextSize(playerid, AufaCintaLunar[playerid][9], aufahaus, 5.0);
		PlayerTextDrawShow(playerid, AufaCintaLunar[playerid][9]);

        stress = PlayerData[playerid][pStress] * 40.0/100;
		PlayerTextDrawTextSize(playerid, AufaCintaLunar[playerid][10], aufahaus, 5.0);
		PlayerTextDrawShow(playerid, AufaCintaLunar[playerid][10]);
    }
    return 1;
}

hook OnPlayerConnect(playerid){
	ShowHbeaufa(playerid);
}

hook OnGameModeInit() {
    AufaCintaLunar[playerid][0] = CreatePlayerTextDraw(playerid, 6.000, 212.000, "_");
    PlayerTextDrawTextSize(playerid, AufaCintaLunar[playerid][0], 87.000, 65.000);
    PlayerTextDrawAlignment(playerid, AufaCintaLunar[playerid][0], 1);
    PlayerTextDrawColor(playerid, AufaCintaLunar[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, AufaCintaLunar[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, AufaCintaLunar[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCintaLunar[playerid][0], 85);
    PlayerTextDrawFont(playerid, AufaCintaLunar[playerid][0], 5);
    PlayerTextDrawSetProportional(playerid, AufaCintaLunar[playerid][0], 0);
    PlayerTextDrawSetPreviewModel(playerid, AufaCintaLunar[playerid][0], 199);
    PlayerTextDrawSetPreviewRot(playerid, AufaCintaLunar[playerid][0], 186.000, 0.000, 39.000, 43.499);
    PlayerTextDrawSetPreviewVehCol(playerid, AufaCintaLunar[playerid][0], 9, 0);

    AufaCintaLunar[playerid][1] = CreatePlayerTextDraw(playerid, 12.000, 197.000, "Stats");
    PlayerTextDrawLetterSize(playerid, AufaCintaLunar[playerid][1], 0.509, 2.799);
    PlayerTextDrawAlignment(playerid, AufaCintaLunar[playerid][1], 1);
    PlayerTextDrawColor(playerid, AufaCintaLunar[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, AufaCintaLunar[playerid][1], 1);
    PlayerTextDrawSetOutline(playerid, AufaCintaLunar[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, AufaCintaLunar[playerid][1], 150);
    PlayerTextDrawFont(playerid, AufaCintaLunar[playerid][1], 0);
    PlayerTextDrawSetProportional(playerid, AufaCintaLunar[playerid][1], 1);

    AufaCintaLunar[playerid][2] = CreatePlayerTextDraw(playerid, 16.000, 226.000, "Hunger");
    PlayerTextDrawLetterSize(playerid, AufaCintaLunar[playerid][2], 0.170, 1.099);
    PlayerTextDrawAlignment(playerid, AufaCintaLunar[playerid][2], 1);
    PlayerTextDrawColor(playerid, AufaCintaLunar[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, AufaCintaLunar[playerid][2], 1);
    PlayerTextDrawSetOutline(playerid, AufaCintaLunar[playerid][2], 1);
    PlayerTextDrawBackgroundColor(playerid, AufaCintaLunar[playerid][2], 150);
    PlayerTextDrawFont(playerid, AufaCintaLunar[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, AufaCintaLunar[playerid][2], 1);

    AufaCintaLunar[playerid][3] = CreatePlayerTextDraw(playerid, 16.000, 239.000, "Energy");
    PlayerTextDrawLetterSize(playerid, AufaCintaLunar[playerid][3], 0.170, 1.099);
    PlayerTextDrawAlignment(playerid, AufaCintaLunar[playerid][3], 1);
    PlayerTextDrawColor(playerid, AufaCintaLunar[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, AufaCintaLunar[playerid][3], 1);
    PlayerTextDrawSetOutline(playerid, AufaCintaLunar[playerid][3], 1);
    PlayerTextDrawBackgroundColor(playerid, AufaCintaLunar[playerid][3], 150);
    PlayerTextDrawFont(playerid, AufaCintaLunar[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, AufaCintaLunar[playerid][3], 1);

    AufaCintaLunar[playerid][4] = CreatePlayerTextDraw(playerid, 16.000, 252.000, "Mood");
    PlayerTextDrawLetterSize(playerid, AufaCintaLunar[playerid][4], 0.170, 1.099);
    PlayerTextDrawAlignment(playerid, AufaCintaLunar[playerid][4], 1);
    PlayerTextDrawColor(playerid, AufaCintaLunar[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, AufaCintaLunar[playerid][4], 1);
    PlayerTextDrawSetOutline(playerid, AufaCintaLunar[playerid][4], 1);
    PlayerTextDrawBackgroundColor(playerid, AufaCintaLunar[playerid][4], 150);
    PlayerTextDrawFont(playerid, AufaCintaLunar[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, AufaCintaLunar[playerid][4], 1);

    AufaCintaLunar[playerid][5] = CreatePlayerTextDraw(playerid, 45.000, 230.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, AufaCintaLunar[playerid][5], 40.000, 5.000);
    PlayerTextDrawAlignment(playerid, AufaCintaLunar[playerid][5], 1);
    PlayerTextDrawColor(playerid, AufaCintaLunar[playerid][5], 909915903);
    PlayerTextDrawSetShadow(playerid, AufaCintaLunar[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, AufaCintaLunar[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCintaLunar[playerid][5], 255);
    PlayerTextDrawFont(playerid, AufaCintaLunar[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, AufaCintaLunar[playerid][5], 1);

    AufaCintaLunar[playerid][6] = CreatePlayerTextDraw(playerid, 45.000, 230.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, AufaCintaLunar[playerid][6], 40.000, 5.000);
    PlayerTextDrawAlignment(playerid, AufaCintaLunar[playerid][6], 1);
    PlayerTextDrawColor(playerid, AufaCintaLunar[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, AufaCintaLunar[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, AufaCintaLunar[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCintaLunar[playerid][6], 255);
    PlayerTextDrawFont(playerid, AufaCintaLunar[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, AufaCintaLunar[playerid][6], 1);

    AufaCintaLunar[playerid][7] = CreatePlayerTextDraw(playerid, 45.000, 242.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, AufaCintaLunar[playerid][7], 40.000, 5.000);
    PlayerTextDrawAlignment(playerid, AufaCintaLunar[playerid][7], 1);
    PlayerTextDrawColor(playerid, AufaCintaLunar[playerid][7], 909915903);
    PlayerTextDrawSetShadow(playerid, AufaCintaLunar[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, AufaCintaLunar[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCintaLunar[playerid][7], 255);
    PlayerTextDrawFont(playerid, AufaCintaLunar[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, AufaCintaLunar[playerid][7], 1);

    AufaCintaLunar[playerid][8] = CreatePlayerTextDraw(playerid, 45.000, 254.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, AufaCintaLunar[playerid][8], 40.000, 5.000);
    PlayerTextDrawAlignment(playerid, AufaCintaLunar[playerid][8], 1);
    PlayerTextDrawColor(playerid, AufaCintaLunar[playerid][8], 909915903);
    PlayerTextDrawSetShadow(playerid, AufaCintaLunar[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, AufaCintaLunar[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCintaLunar[playerid][8], 255);
    PlayerTextDrawFont(playerid, AufaCintaLunar[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, AufaCintaLunar[playerid][8], 1);

    AufaCintaLunar[playerid][9] = CreatePlayerTextDraw(playerid, 45.000, 242.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, AufaCintaLunar[playerid][9], 40.000, 5.000);
    PlayerTextDrawAlignment(playerid, AufaCintaLunar[playerid][9], 1);
    PlayerTextDrawColor(playerid, AufaCintaLunar[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, AufaCintaLunar[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, AufaCintaLunar[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCintaLunar[playerid][9], 255);
    PlayerTextDrawFont(playerid, AufaCintaLunar[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, AufaCintaLunar[playerid][9], 1);

    AufaCintaLunar[playerid][10] = CreatePlayerTextDraw(playerid, 45.000, 255.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, AufaCintaLunar[playerid][10], 40.000, 5.000);
    PlayerTextDrawAlignment(playerid, AufaCintaLunar[playerid][10], 1);
    PlayerTextDrawColor(playerid, AufaCintaLunar[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, AufaCintaLunar[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, AufaCintaLunar[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, AufaCintaLunar[playerid][10], 255);
    PlayerTextDrawFont(playerid, AufaCintaLunar[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, AufaCintaLunar[playerid][10], 1);

    AufaCintaLunar[playerid][11] = CreatePlayerTextDraw(playerid, 39.000, 271.000, "99");
    PlayerTextDrawLetterSize(playerid, AufaCintaLunar[playerid][11], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, AufaCintaLunar[playerid][11], 1);
    PlayerTextDrawColor(playerid, AufaCintaLunar[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, AufaCintaLunar[playerid][11], 1);
    PlayerTextDrawSetOutline(playerid, AufaCintaLunar[playerid][11], 1);
    PlayerTextDrawBackgroundColor(playerid, AufaCintaLunar[playerid][11], 150);
    PlayerTextDrawFont(playerid, AufaCintaLunar[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, AufaCintaLunar[playerid][11], 1);

    AufaCintaLunar[playerid][12] = CreatePlayerTextDraw(playerid, 47.000, 271.000, "Ping");
    PlayerTextDrawLetterSize(playerid, AufaCintaLunar[playerid][12], 0.150, 0.799);
    PlayerTextDrawAlignment(playerid, AufaCintaLunar[playerid][12], 1);
    PlayerTextDrawColor(playerid, AufaCintaLunar[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, AufaCintaLunar[playerid][12], 1);
    PlayerTextDrawSetOutline(playerid, AufaCintaLunar[playerid][12], 1);
    PlayerTextDrawBackgroundColor(playerid, AufaCintaLunar[playerid][12], 150);
    PlayerTextDrawFont(playerid, AufaCintaLunar[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, AufaCintaLunar[playerid][12], 1);
}