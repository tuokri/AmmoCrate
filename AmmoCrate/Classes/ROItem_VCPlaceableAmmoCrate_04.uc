// ROItem_VCPlaceableAmmoCrate
//=============================================================================
// A VC version of the placeable Ammo Crate.
//=============================================================================
// Rising Storm 2: Vietnam Source
// Copyright (C) 2018 Tripwire Interactive LLC
// - Nate Steger @ Antimatter Games LTD
//============================================================================

class ROItem_VCPlaceableAmmoCrate_04 extends ROItem_PlaceableAmmoCrate_04;

DefaultProperties
{
	WeaponContentClass(0)="ROGameContent.ROItem_VCPlaceableAmmoCrate_Content_04"
	RoleSelectionImage(0)=Texture2D'VN_UI_Textures.WeaponTex.VN_Binocs'

	ClassConstructorProxy=class'ROVCAmmoCreateConstructorProxy'

	// Ammo
	AmmoClass=class'ROAmmo_Placeable_AmmoCrate'
	InvIndex=`ROII_Placeable_Ammo
	ROTM_PlacingMessage=ROTMSG_PlaceAmmoCrate

	AmmoCrateClass=class'ROGame.ROVCPlaceableAmmoResupply'
	PhysicalAmmoCrateClass=class'ROGame.ROVCPlaceableAmmoResupplyCrate'
}