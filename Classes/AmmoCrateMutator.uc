class AmmoCrateMutator extends ROMutator
    config(AmmoCrate);

function PreBeginPlay()
{
    `log("AmmoCrateMutator init");

    super.PreBeginPlay();

    ROGameInfo(WorldInfo.Game).PlayerControllerClass = class'ACPlayerController';
}

function ModifyPlayer(Pawn Other)
{
    local ACPlayerController ACPC;

    ACPC = ACPlayerController(Other.Controller);

    if (ACPC == None)
    {
        `log("Error replacing roles");
        return;
    }

    ACPC.ReplaceRoles();
    ACPC.ClientReplaceRoles();
    ACPC.ReplaceInventoryManager();
    ACPC.ClientReplaceInventoryManager();
}
