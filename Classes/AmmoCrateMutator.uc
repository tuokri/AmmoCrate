class AmmoCrateMutator extends ROMutator
    config(AmmoCrate);

function PreBeginPlay()
{
    `log("AmmoCrateMutator init");

    super.PreBeginPlay();

    ROGameInfo(WorldInfo.Game).PlayerControllerClass = class'ACPlayerController';
}

simulated function ModifyPlayer(Pawn Other)
{
    ACPlayerController(Other.Controller).ReplaceRoles();
}
