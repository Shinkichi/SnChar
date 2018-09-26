class ZombieHusk_CIRCUS extends SnChar.ZombieHusk;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_CIRCUS.uax

simulated function HideBone(name boneName)
{
	local int BoneScaleSlot;
	local bool bValidBoneToHide;

	if( boneName == LeftThighBone )
	{
		boneScaleSlot = 0;
		bValidBoneToHide = true;
	}
	else if ( boneName == RightThighBone )
	{
		boneScaleSlot = 1;
		bValidBoneToHide = true;
	}
	else if( boneName == RightFArmBone )
	{
		boneScaleSlot = 2;
		bValidBoneToHide = true;
	}
	else if ( boneName == LeftFArmBone )
	{
		boneScaleSlot = 3;
		bValidBoneToHide = true;
	}
	else if ( boneName == HeadBone )
	{
		// Only scale the bone down once
		if( SeveredHead == none )
		{
			bValidBoneToHide = true;
			boneScaleSlot = 4;
		}
		else
		{
			return;
		}
	}
	else if ( boneName == 'spine' )
	{
	    bValidBoneToHide = true;
		boneScaleSlot = 5;
	}

	// Only hide the bone if it is one of the arms, legs, or head, don't hide other misc bones
	if( bValidBoneToHide )
	{
		SetBoneScale(BoneScaleSlot, 0.0, BoneName);
	}
}

static simulated function PreCacheMaterials(LevelInfo myLevel)
{//should be derived and used.
	myLevel.AddPrecacheMaterial(Shader'KF_Specimens_Trip_CIRCUS_T.husk_CIRCUS.husk_shader');
}

DefaultProperties
{
	Mesh=SkeletalMesh'KF_Freaks2_Trip_CIRCUS.husk_CIRCUS'
	Skins(0)=Shader'KF_Specimens_Trip_CIRCUS_T.husk_CIRCUS.husk_shader'

	DetachedArmClass=class'SeveredArmHusk_CIRCUS'
	DetachedLegClass=class'SeveredLegHusk_CIRCUS'
	DetachedHeadClass=class'SeveredHeadHusk_CIRCUS'
	DetachedSpecialArmClass=class'SeveredArmHusk_CIRCUS'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Husk_Pain'
	AmbientSound=Sound'KF_BaseHusk_CIRCUS.Husk_IdleLoop'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Husk_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_CIRCUS.Husk_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_CIRCUS.Husk_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_CIRCUS.Husk_Challenge'
	MoanVoice=Sound'KF_EnemiesFinalSnd_CIRCUS.Husk_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Husk_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_CIRCUS.Husk_Jump'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_CIRCUS.Bloat_HitPlayer'
	ProjectileBloodSplatClass=class'ROEffects.ROBulletHitMetalEffect'
	
	MenuName="Circus Husk SN"
}
