class ACPlayerController extends ROPlayerController;

simulated function PreBeginPlay()
{
    super.PreBeginPlay();

    if (WorldInfo.NetMode == NM_Standalone)
    {
        ReplaceRoles();
        ReplaceInventoryManager();
    }
}

simulated function ReplaceInventoryManager()
{
    ROPawn(Pawn).InventoryManagerClass = class'ACInventoryManager';
}

simulated function ReplaceRoles()
{
    local ROMapInfo ROMI;
    local RORoleCount RORC;

    ROMI = ROMapInfo(WorldInfo.GetMapInfo());

    if (ROMI != None)
    {
        `log("Replacing roles...");

        ForEach ROMI.NorthernRoles(RORC)
        {
            if (RORC.RoleInfoClass == class'RORoleInfoNorthernSapper'
                || RORC.RoleInfoClass == class'RORoleInfoNorthernSapperNLF')
            {
                RORC.RoleInfoClass = class'RORoleInfoNorthernSapperAC';
                `log("Replaced RoleInfoClass " $ RORC.RoleInfoClass);
            }
        }

        ForEach ROMI.SouthernRoles(RORC)
        {
            if (RORC.RoleInfoClass == class'RORoleInfoSouthernEngineer')
            {
                RORC.RoleInfoClass = class'RORoleInfoSouthernEngineerAC';
                `log("Replaced RoleInfoClass " $ RORC.RoleInfoClass);
            }
        }
    }
}

reliable client function ClientReplaceRoles()
{
    ReplaceRoles();
}

reliable client function ClientReplaceInventoryManager()
{
    ReplaceInventoryManager();
}
