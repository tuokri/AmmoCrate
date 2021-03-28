class AmmoCrateMutator extends ROMutator
    config(AmmoCrate);

function PreBeginPlay()
{
    `log("AmmoCrateMutator init");

    super.PreBeginPlay();

    ROGameInfo(WorldInfo.Game).PlayerControllerClass = class'ACPlayerController';
    ROGameInfo(WorldInfo.Game).PlayerReplicationInfoClass = class'ACPlayerReplicationInfo';
}

/*
function ModifyPlayer(Pawn Other)
{
    local RORoleInfo RORI;
    local ACPlayerReplicationInfo ACPRI;
    local class<ROWeapon> ROWC;

    ACPRI = ACPlayerReplicationInfo(Other.PlayerReplicationInfo);
    RORI = ACPRI.RoleInfo;

    `log("RORI = " $ RORI);

    ForEach RORI.Items[RORIGM_Default].OtherItems(ROWC)
    {
        `log("Item = " $ ROWC);
    }

    super.ModifyPlayer(Other);
}
*/

function NotifyLogin(Controller NewPlayer)
{
    local ACPlayerController ACPC;

    ACPC = ACPlayerController(NewPlayer);

    if (ACPC == None)
    {
        `log("Error replacing roles");
        return;
    }

    ACPC.ReplaceRoles();
    ACPC.ClientReplaceRoles();
    ACPC.ReplaceInventoryManager();
    ACPC.ClientReplaceInventoryManager();

    super.NotifyLogin(NewPlayer);
}
