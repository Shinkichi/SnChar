class ZombieSiren_XMas extends SnChar.ZombieSiren;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_Xmas.uax

static simulated function PreCacheMaterials(LevelInfo myLevel)
{//should be derived and used.
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_XMAS_T.caroler_cmb');
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_XMAS_T.caroler_env_cmb');
	myLevel.AddPrecacheMaterial(Texture'KF_Specimens_Trip_XMAS_T.caroler_diffuse');
}


DefaultProperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_XMas.Caroler'
	Skins(0)=FinalBlend'KF_Specimens_Trip_T.siren_hair_fb'
	Skins(1)=Shader'KF_Specimens_Trip_XMAS_T.Caroler.caroler_shdr'

	DetachedHeadClass=class'SeveredHeadSiren_XMas'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Siren_Pain'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Siren_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_Xmas.Siren_Jump'
	AmbientSound=Sound'KF_BaseSiren.Siren_IdleLoop'
	MoanVoice=Sound'KF_EnemiesFinalSnd.Siren_Talk'

	MenuName="Christmas Siren SN"
}

