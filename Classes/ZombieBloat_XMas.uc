class ZombieBloat_XMas extends SnChar.ZombieBloat;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_Xmas.uax

function PlayDyingSound()
{
	if ( Level.NetMode!=NM_Client )
	{
		if ( bGibbed )
		{
			PlaySound(sound'KF_EnemiesFinalSnd_Xmas.Bloat_DeathPop', SLOT_Pain,2.0,true,525);
			return;
		}

		if ( bDecapitated )
		{
			PlaySound(HeadlessDeathSound, SLOT_Pain,1.30,true,525);
		}
		else
		{
			PlaySound(sound'KF_EnemiesFinalSnd_Xmas.Bloat_DeathPop', SLOT_Pain,2.0,true,525);
		}
	}
}

static simulated function PreCacheMaterials(LevelInfo myLevel)
{
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_XMAS_T.BloatSanta.BloatSanta_cmb');
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_XMAS_T.BloatSanta_env_cmb');
	myLevel.AddPrecacheMaterial(Texture'KF_Specimens_Trip_XMAS_T.Bloat_Santa');
}

defaultproperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_Xmas.BloatSanta'
	Skins(0)=Combiner'KF_Specimens_Trip_XMAS_T.BloatSanta.BloatSanta_cmb'

	DetachedArmClass=class'SeveredArmBloat_XMas'
	DetachedLegClass=class'SeveredLegBloat_XMas'
	DetachedHeadClass=class'SeveredHeadBloat_XMas'

	BileExplosion=class'KFMod.BileExplosion'
	BileExplosionHeadless=class'KFMod.BileExplosionHeadless'

	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Bloat_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_Xmas.Bloat_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_Xmas.Bloat_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_Xmas.Bloat_Challenge'

	MoanVoice=Sound'KF_EnemiesFinalSnd_Xmas.Bloat_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Bloat_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_Xmas.Bloat_Jump'

	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_Xmas.Bloat_HitPlayer'
	HitSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Bloat_Pain'

	AmbientSound=Sound'KF_BaseBloat_Xmas.Bloat_Idle1Loop'

	MenuName="Christmas Bloat SN"
}
