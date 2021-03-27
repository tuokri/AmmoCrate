
class AmmoCrateMutator extends ROMutator
    config(AmmoCrate)
    hidecategories(Navigation,Movement,Collision);

var config int NorthernSapperCount;
var config int SouthernEngineerCount;

function SetAmmoCrate()
{
    local ROMapInfo ROMI;
    local int I;

    LogInternal("AmmoCrateMutator SetAmmoCrate");
    ROMI = ROMapInfo(WorldInfo.GetMapInfo());
    // End:0x7A
    if(!ROMI.bInitializedRoles)
    {
        return;
    }
    ClearTimer('SetAmmoCrate');
    I = 0;
    J0x119:
    // End:0x2BA [Loop If]
    if(I < ROMI.NorthernRoles.Length)
    {
        // End:0x229
        if(ROMI.NorthernRoles[I].RoleInfoClass.default.ClassIndex == `ROCI_ENGINEER)
        {
            ROMI.NorthernRoles[I].RoleInfoClass = class'RORoleInfoNorthernSapperAC';
            ROMI.NorthernRoles[I].Count = byte(NorthernSapperCount);
        };
        // End:0x2AC
        goto J0x119;
    }
    I = 0;
    J0x2C5:
    // End:0x466 [Loop If]
    if(I < ROMI.SouthernRoles.Length)
    {
        // End:0x3D5
        if(ROMI.SouthernRoles[I].RoleInfoClass.default.ClassIndex == `ROCI_ENGINEER)
        {
            ROMI.SouthernRoles[I].RoleInfoClass = class'RORoleInfoSouthernEngineerAC';
            ROMI.SouthernRoles[I].Count = byte(SouthernEngineerCount);
        };
        // End:0x458
        goto J0x2C5;
    }
    //return;    
}

function PostBeginPlay()
{
    super(Actor).PostBeginPlay();
    LogInternal("AmmoCrateMutator PostBeginPlay");
    SetTimer(1.0, true, 'SetAmmoCrate');
    //return;    
}