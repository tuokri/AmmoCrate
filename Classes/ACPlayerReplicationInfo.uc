class ACPlayerReplicationInfo extends ROPlayerReplicationInfo;

function bool SelectRoleByClass(Controller C, class<RORoleInfo> RoleInfoClass,
    optional out WeaponSelectionInfo WeaponSelection, optional out byte NewSquadIndex,
    optional out byte NewClassIndex, optional class<ROVehicle> TankSelection)
{
    // `log("ACPlayerReplicationInfo.SelectRoleByClass()");

    ACPlayerController(C).ReplaceRoles();
    ACPlayerController(C).ReplaceInventoryManager();

    return super.SelectRoleByClass(C, RoleInfoClass, WeaponSelection,
        NewSquadIndex, NewClassIndex, TankSelection);
}
