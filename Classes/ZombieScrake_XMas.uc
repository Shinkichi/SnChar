class ZombieScrake_XMas extends SnChar.ZombieScrake;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_Xmas.uax
#exec OBJ LOAD FILE=KF_BaseScrake_Xmas.uax
#exec OBJ LOAD FILE=KF_Specimens_Trip_XMAS_T.utx

simulated function SpawnExhaustEmitter()
{
}

simulated function UpdateExhaustEmitter()
{
}

static simulated function PreCacheMaterials(LevelInfo myLevel)
{//should be derived and used.
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_XMAS_T.Scrakefrost_cmb');
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_T.scrake_env_cmb');
	myLevel.AddPrecacheMaterial(Texture'KF_Specimens_Trip_XMAS_T.scrake_frost');
	myLevel.AddPrecacheMaterial(Texture'KF_Specimens_Trip_XMAS_T.scrake_frost_opacity');
}

DefaultProperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_Xmas.ScrakeFrost'
	Skins(0)=Shader'KF_Specimens_Trip_XMAS_T.ScrakeFrost.scrake_frost_shdr'

	DetachedArmClass=class'SeveredArmScrake_XMas'
	DetachedSpecialArmClass=class'SeveredArmScrakeSaw_XMas'
	DetachedLegClass=class'SeveredLegScrake_XMas'
	DetachedHeadClass=class'SeveredHeadScrake_XMas'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Scrake_Pain'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Scrake_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_Xmas.Scrake_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_Xmas.Scrake_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_Xmas.Scrake_Challenge'

	MoanVoice=Sound'KF_EnemiesFinalSnd_Xmas.Scrake_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Scrake_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_Xmas.Scrake_Jump'
	AmbientSound=Sound'KF_BaseScrake_Xmas.Scrake_Chainsaw_Idle'
	SawAttackLoopSound=Sound'KF_EnemiesFinalSnd_Xmas.Scrake_Chainsaw_Impale'
	ChainSawOffSound=Sound'KF_BaseScrake_Xmas.Scrake_Chainsaw_Idle'
	MeleeAttackHitSound=Sound'KF_EnemiesFinalSnd_Xmas.Scrake_Chainsaw_HitPlayer'

	MenuName="Christmas Scrake SN"
}
