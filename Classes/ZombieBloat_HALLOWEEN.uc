class ZombieBloat_HALLOWEEN extends SnChar.ZombieBloat;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_HALLOWEEN.uax

function PlayDyingSound()
{
	if ( Level.NetMode!=NM_Client )
	{
		if ( bGibbed )
		{
			PlaySound(sound'KF_EnemiesFinalSnd_HALLOWEEN.Bloat_DeathPop', SLOT_Pain,2.0,true,525);
			return;
		}

		if ( bDecapitated )
		{
			PlaySound(HeadlessDeathSound, SLOT_Pain,1.30,true,525);
		}
		else
		{
			PlaySound(sound'KF_EnemiesFinalSnd_HALLOWEEN.Bloat_DeathPop', SLOT_Pain,2.0,true,525);
		}
	}
}

defaultproperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_HALLOWEEN.bloat_HALLOWEEN'
	Skins(0)=Combiner'KF_Specimens_Trip_HALLOWEEN_T.bloat.bloat_RedneckZombie_cmb'

	DetachedArmClass=class'SeveredArmBloat_HALLOWEEN'
	DetachedLegClass=class'SeveredLegBloat_HALLOWEEN'
	DetachedHeadClass=class'SeveredHeadBloat_HALLOWEEN'

	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Bloat_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Bloat_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Bloat_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Bloat_Challenge'

	MoanVoice=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Bloat_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Bloat_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Bloat_Jump'

	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_HALLOWEEN.Bloat_HitPlayer'
	HitSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Bloat_Pain'

	AmbientSound=Sound'KF_BaseBloat_HALLOWEEN.Bloat_Idle1Loop'

	BileExplosion=class'KFMod.BileExplosion_Halloween'
	BileExplosionHeadless=class'KFMod.BileExplosionHeadless_Halloween'

	MenuName="HALLOWEEN Bloat SN"
}
