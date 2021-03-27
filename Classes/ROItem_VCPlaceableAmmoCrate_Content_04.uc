// ROItem_VCPlaceableAmmoCrate_Content
//=============================================================================
// VC Content for Placeable Ammo Crate
//=============================================================================
// Rising Storm 2: Vietnam Source
// Copyright (C) 2018 Tripwire Interactive LLC
// - Nate Steger @ Antimatter Games LTD
//=============================================================================

class ROItem_VCPlaceableAmmoCrate_Content_04 extends ROItem_VCPlaceableAmmoCrate_04;

DefaultProperties
{
		Begin Object Name=FirstPersonMesh
		DepthPriorityGroup=SDPG_Foreground
		// SkeletalMesh=SkeletalMesh'WP_VN_Resupply_Crates.Mesh.VC.VC_Resupply_Crate_Static'
		// PhysicsAsset=PhysicsAsset'WP_VN_Resupply_Crates.Phys.VC_Resupply_Crate_Physics'
		SkeletalMesh=SkeletalMesh'WP_VN_VC_PunjiTrap.Mesh.VC_PunjiTrap'
		PhysicsAsset=PhysicsAsset'WP_VN_VC_PunjiTrap.Phys.VC_PunjiTrap_Physics'
		AnimSets(0)=AnimSet'WP_VN_Resupply_Crates.Animation.WP_VC_ResupplyHands'
		AnimSets(1)=AnimSet'WP_VN_Resupply_Crates.Animation.WP_US_ResupplyHands'
		AnimTreeTemplate=AnimTree'WP_VN_VC_PunjiTrap.Animation.VC_PunjiTrap_Tree'
		Scale=1.0
		FOV=70
	End Object

	Begin Object Name=PickupMesh
		SkeletalMesh=SkeletalMesh'WP_VN_Resupply_Crates.Mesh.VC.VC_Resupply_Crate_Static'// SkeletalMesh'ENV_VN_VC_Supply.Meshes.Crates.SK_Crate_02_Closed'
		PhysicsAsset=PhysicsAsset'WP_VN_Resupply_Crates.Phys.VC_Resupply_Crate_Physics' // PhysicsAsset'ENV_VN_VC_Supply.Meshes.Crates.SK_Crate_02_Closed_Physics'
		CollideActors=true
		BlockActors=true
		BlockZeroExtent=true
		BlockNonZeroExtent=true//false
		BlockRigidBody=true
		bHasPhysicsAssetInstance=false
		bUpdateKinematicBonesFromAnimation=false
		PhysicsWeight=1.0
		RBChannel=RBCC_GameplayPhysics
		RBCollideWithChannels=(Default=TRUE,GameplayPhysics=TRUE,EffectPhysics=TRUE)
		bSkipAllUpdateWhenPhysicsAsleep=TRUE
		bSyncActorLocationToRootRigidBody=true
	End Object

	AttachmentClass=class'ROGameContent.ROItemAttach_VCPlaceableAmmoCrate'

	ArmsAnimSets[0]=AnimSet'WP_VN_Resupply_Crates.Animation.WP_VC_ResupplyHands'
	ArmsAnimSets[1]=AnimSet'WP_VN_Resupply_Crates.Animation.WP_US_ResupplyHands'

	// Specify this by default.
	ArmsAnimSet=AnimSet'WP_VN_Resupply_Crates.Animation.WP_VC_ResupplyHands'
}