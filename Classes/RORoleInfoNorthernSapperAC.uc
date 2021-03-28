class RORoleInfoNorthernSapperAC extends RORoleInfoNorthernSapper;

DefaultProperties
{
	RoleType=RORIT_Engineer
	ClassTier=3
	ClassIndex=`ROCI_ENGINEER

	Items[RORIGM_Default]={(
		PrimaryWeapons=(class'ROGame.ROWeap_SKS_Rifle',class'ROGame.ROWeap_PPSH41_SMG',class'ROGame.ROWeap_MAT49_SMG'),
		OtherItems=(class'ROGame.ROWeap_MD82_Mine',class'AmmoCrate.ROItem_VCPlaceableAmmoCrate_04')
	)}

	bAllowPistolsInRealism=false

	ClassIcon=Texture2D'VN_UI_Textures.menu.class_icon_sapper'
	ClassIconLarge=Texture2D'VN_UI_Textures.menu.ProfileStats.class_icon_large_sapper'
}
