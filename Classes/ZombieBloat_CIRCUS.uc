class ZombieBloat_CIRCUS extends SnChar.ZombieBloat;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_CIRCUS.uax

function PlayDyingSound()
{
	if ( Level.NetMode!=NM_Client )
	{
		if ( bGibbed )
		{
			PlaySound(sound'KF_EnemiesFinalSnd_Circus.Bloat_DeathPop', SLOT_Pain,2.0,true,525);
			return;
		}

		if ( bDecapitated )
		{
			PlaySound(HeadlessDeathSound, SLOT_Pain,1.30,true,525);
		}
		else
		{
			PlaySound(sound'KF_EnemiesFinalSnd_Circus.Bloat_DeathPop', SLOT_Pain,2.0,true,525);
		}
	}
}

static simulated function PreCacheMaterials(LevelInfo myLevel)
{
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_CIRCUS_T.bloat_CIRCUS.bloat_clown_cmb');
}

defaultproperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_CIRCUS.bloat_CIRCUS'
	Skins(0)=Combiner'KF_Specimens_Trip_CIRCUS_T.bloat_CIRCUS.bloat_clown_cmb'

	DetachedArmClass=class'SeveredArmBloat_CIRCUS'
	DetachedLegClass=class'SeveredLegBloat_CIRCUS'
	DetachedHeadClass=class'SeveredHeadBloat_CIRCUS'
	
	BileExplosion=class'KFMod.BileExplosion_Circus'
    BileExplosionHeadless=class'KFMod.BileExplosionHeadless_Circus'

	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Bloat_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_CIRCUS.Bloat_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_CIRCUS.Bloat_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_CIRCUS.Bloat_Challenge'

	MoanVoice=Sound'KF_EnemiesFinalSnd_CIRCUS.Bloat_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Bloat_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_CIRCUS.Bloat_Jump'

	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_CIRCUS.Bloat_HitPlayer'
	HitSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Bloat_Pain'

	AmbientSound=Sound'KF_BaseBloat_Circus.Bloat_Idle1Loop'

	MenuName="Circus Bloat SN"
}
