class ZombieCrawler_HALLOWEEN extends SnChar.ZombieCrawler;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_HALLOWEEN.uax

// Removes eblood emitters from legs
simulated function HideBone(name boneName)
{
	local int BoneScaleSlot;
	local coords boneCoords;
	local bool bValidBoneToHide;

	if( boneName == RightFArmBone )
	{
		boneScaleSlot = 2;
		bValidBoneToHide = true;
		if( SeveredRightArm == none )
		{
			SeveredRightArm = Spawn(SeveredArmAttachClass,self);
			SeveredRightArm.SetDrawScale(SeveredArmAttachScale);
			boneCoords = GetBoneCoords( 'rarm' );
			AttachEmitterEffect( LimbSpurtEmitterClass, 'rarm', boneCoords.Origin, rot(0,0,0) );
			AttachToBone(SeveredRightArm, 'rarm');
		}
	}
	else if ( boneName == LeftFArmBone )
	{
		boneScaleSlot = 3;
		bValidBoneToHide = true;
		if( SeveredLeftArm == none )
		{
			SeveredLeftArm = Spawn(SeveredArmAttachClass,self);
			SeveredLeftArm.SetDrawScale(SeveredArmAttachScale);
			boneCoords = GetBoneCoords( 'larm' );
			AttachEmitterEffect( LimbSpurtEmitterClass, 'larm', boneCoords.Origin, rot(0,0,0) );
			AttachToBone(SeveredLeftArm, 'larm');
		}
	}
	else if ( boneName == HeadBone )
	{
		// Only scale the bone down once
		if( SeveredHead == none )
		{
			bValidBoneToHide = true;
			boneScaleSlot = 4;
			SeveredHead = Spawn(SeveredHeadAttachClass,self);
			SeveredHead.SetDrawScale(SeveredHeadAttachScale);
			boneCoords = GetBoneCoords( 'neck' );
			AttachEmitterEffect( NeckSpurtEmitterClass, 'neck', boneCoords.Origin, rot(0,0,0) );
			AttachToBone(SeveredHead, 'neck');
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

defaultproperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_HALLOWEEN.crawler_HALLOWEEN'
	Skins(0)=Combiner'KF_Specimens_Trip_HALLOWEEN_T.crawler.crawler_RedneckZombie_CMB'

    SeveredLegAttachClass=none
	DetachedArmClass=class'SeveredArmCrawler_HALLOWEEN'
	DetachedLegClass=class'SeveredLegCrawler_HALLOWEEN'
	DetachedHeadClass=class'SeveredHeadCrawler_HALLOWEEN'

	KFRagdollName="RedneckCrawl_Trip"

	MoanVoice=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Crawler_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Crawler_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Crawler_Jump'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Crawler_Acquire'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Crawler_Acquire'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Crawler_Acquire'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Crawler_Acquire'
	AmbientSound=Sound'KF_BaseCrawler_HALLOWEEN.Crawler_Idle'
	HitSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Crawler_Pain'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_HALLOWEEN.Crawler_HitPlayer'
	
	MenuName="HALLOWEEN Crawler SN"
}
