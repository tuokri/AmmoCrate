class AmmoCrateMutator extends ROMutator
    config(AmmoCrate);

var RORoleInfoClasses RORICSouth;
var RORoleInfoClasses RORICNorth;

function PreBeginPlay()
{

    ROGameInfo(WorldInfo.Game).PlayerControllerClass = class'ROPlayerController';
    ROGameInfo(WorldInfo.Game).PlayerReplicationInfoClass = class'ROPlayerReplicationInfo';
    ROGameInfo(WorldInfo.Game).PawnHandlerClass = class'ROPawnHandler';
    OverrideGameInfo();

    // VerifyConfig();
}

function PostBeginPlay()
{
    ReplacePawns();
}


simulated function OverrideGameInfo()
{
    local ROGameInfo ROGI;
    local ROMapInfo ROMI;

    ROMI = ROMapInfo(WorldInfo.GetMapInfo());

    ROGI.Reset();
}

/*
function float VerifyFloatModifierMin(Name ModifierName, float Modifier,
    float MinValue, float DefaultValue)
{
    if (Modifier < `NORTH_PAWN_MODIFIER_MIN)
    {
            MinValue $ " using default value: " $ DefaultValue, 'Config');
        Modifier = DefaultValue;
    }
    return Modifier;
}
*/

simulated function ReplacePawns()
{
    ROGameInfo(WorldInfo.Game).SouthRoleContentClasses = RORICSouth;
    ROGameInfo(WorldInfo.Game).NorthRoleContentClasses = RORICNorth;
}

simulated function ModifyNorthPlayer(out Pawn Other)
{
    local ACNorthPawn NP;
    local RORoleInfo RORI;
    local ACRoleInfoNorthernInfantry RONI;

    NP = ACNorthPawn(Other);

    RORI = ROPlayerController(NP.Controller).GetRoleInfo();
    RONI = ACRoleInfoNorthernInfantry(RORI);
    RONI.ExtraPawnModifiers(NP);
}

simulated function ModifySouthPlayer(out Pawn Other)
{
    local ACSouthPawn SP;

    SP = ACSouthPawn(Other);
}

simulated function ModifyPlayer(Pawn Other)
{
    super.ModifyPlayer(Other);

    // ROPlayerController(Other.Controller).ClientSetHUD(ACHUDType);

    if (Other.GetTeamNum() == `ALLIES_TEAM_INDEX)
    {
        ModifySouthPlayer(Other);
    }
    else if (Other.GetTeamNum() == `AXIS_TEAM_INDEX)
    {
        ModifyNorthPlayer(Other);
    }

    ReplacePawns();
}

simulated function ModifyPreLogin(string Options, string Address, out string ErrorMessage)
{
    ReplacePawns();
}

DefaultProperties
{
    RORICSouth=(LevelContentClasses=("AmmoCrate.ACSouthPawn"))
    RORICNorth=(LevelContentClasses=("AmmoCrate.ACNorthPawn"))
}
