class ACPlayerController extends ROPlayerController;

simulated function ReplaceRoles()
{
    local ROMapInfo ROMI;
    local RORoleCount RORC;

    ROMI = ROMapInfo(WorldInfo.GetMapInfo());

    if (ROMI != None)
    {
        ForEach ROMI.NorthernRoles(RORC)
        {
            if (RORC.RoleInfoClass == class'RORoleInfoNorthernSapper')
            {
                RORC.RoleInfoClass = class'RORoleInfoNorthernSapperAC';
            }
        }

        ForEach ROMI.SouthernRoles(RORC)
        {
            if (RORC.RoleInfoClass == class'RORoleInfoSouthernEngineer')
            {
                RORC.RoleInfoClass = class'RORoleInfoSouthernEngineerAC';
            }
        }
    }
}

simulated function PreBeginPlay()
{
    super.PreBeginPlay();

    ReplaceRoles();
}
