class ZombieHusk_XMas extends SnChar.ZombieHusk;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_Xmas.uax
#exec OBJ LOAD FILE=KF_Specimens_Trip_XMAS_T_Two.utx

static simulated function PreCacheMaterials(LevelInfo myLevel)
{//should be derived and used.
	myLevel.AddPrecacheMaterial(Texture'KF_Specimens_Trip_XMAS_T_Two.Husk_Snowman');
	myLevel.AddPrecacheMaterial(Texture'KF_Specimens_Trip_XMAS_T_Two.husk_snowman_emiss');
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_T_Two.burns_energy_cmb');
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_XMAS_T_Two.husk_snowman_cmb');
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_XMAS_T_Two.husk_snowman_env_cmb');
	myLevel.AddPrecacheMaterial(Material'KF_Specimens_Trip_XMAS_T_Two.husk_snowman_shdr');
}

DefaultProperties
{
	Mesh=SkeletalMesh'KF_Freaks2_Trip_XMas.JackFrost'
	Skins(0)=Shader'KF_Specimens_Trip_XMAS_T_Two.Husk_Snowman.husk_snowman_shdr'
	Skins(1)=Shader'KF_Specimens_Trip_T_Two.burns.burns_shdr'

	DetachedArmClass=class'SeveredArmHusk_XMas'
	DetachedLegClass=class'SeveredLegHusk_XMas'
	DetachedHeadClass=class'SeveredHeadHusk_XMas'
	DetachedSpecialArmClass=class'SeveredArmHusk_XMas'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Husk_Pain'
	AmbientSound=Sound'KF_BaseHusk_Xmas.Husk_IdleLoop'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Husk_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_Xmas.Husk_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_Xmas.Husk_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_Xmas.Husk_Challenge'
	MoanVoice=Sound'KF_EnemiesFinalSnd_Xmas.Husk_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Husk_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_Xmas.Husk_Jump'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_Xmas.Bloat_HitPlayer'
	
	MenuName="Christmas Husk SN"
}
