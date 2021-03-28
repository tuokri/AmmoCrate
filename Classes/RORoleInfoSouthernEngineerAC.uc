class RORoleInfoSouthernEngineerAC extends RORoleInfoSouthernInfantry;

DefaultProperties
{
	RoleType=RORIT_Engineer
	ClassTier=3
	ClassIndex=`ROCI_ENGINEER // 4

	Items[RORIGM_Default]={(
		PrimaryWeapons=(class'ROGame.ROWeap_M3A1_SMG',class'ROGame.ROWeap_M37_Shotgun',class'ROGame.ROWeap_M2_Carbine',class'ROGame.ROWeap_M9_Flamethrower'),
		DisableSecondaryForPrimary=(true, true, true, false),
		OtherItems=(class'ROGame.ROWeap_M34_WP',class'ROGame.ROWeap_C4_Explosive',class'AmmoCrate.ROItem_USPlaceableAmmoCrate_04'),
		OtherItemsStartIndexForPrimary=(0, 0, 0, 0),
		NumOtherItemsForPrimary=(0, 0, 0, 255)
	)}

	bAllowPistolsInRealism=false

	ClassIcon=Texture2D'VN_UI_Textures.menu.class_icon_sapper'
	ClassIconLarge=Texture2D'VN_UI_Textures.menu.ProfileStats.class_icon_large_sapper'
}

