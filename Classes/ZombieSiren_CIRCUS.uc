class ZombieSiren_CIRCUS extends SnChar.ZombieSiren;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_CIRCUS.uax

static simulated function PreCacheMaterials(LevelInfo myLevel)
{//should be derived and used.
	myLevel.AddPrecacheMaterial(FinalBlend'KF_Specimens_Trip_T.siren_hair_fb');
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_CIRCUS_T.Siren_Circus.siren_CIRCUS_CMB');
}

DefaultProperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_CIRCUS.Siren_Circus'
	Skins(0)=FinalBlend'KF_Specimens_Trip_T.siren_hair_fb'
	Skins(1)=Combiner'KF_Specimens_Trip_CIRCUS_T.Siren_Circus.siren_CIRCUS_CMB'

	DetachedHeadClass=class'SeveredHeadSiren_CIRCUS'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Siren_Pain'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Siren_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_CIRCUS.Siren_Jump'
	AmbientSound=Sound'KF_BaseSiren_CIRCUS.Siren_IdleLoop'
	MoanVoice=Sound'KF_EnemiesFinalSnd_CIRCUS.Siren_Talk'

	MenuName="Circus Siren SN"
}
