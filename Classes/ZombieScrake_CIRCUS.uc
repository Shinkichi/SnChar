class ZombieScrake_CIRCUS extends SnChar.ZombieScrake;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_CIRCUS.uax
#exec OBJ LOAD FILE=KF_BaseScrake_CIRCUS.uax

static simulated function PreCacheMaterials(LevelInfo myLevel)
{//should be derived and used.
	myLevel.AddPrecacheMaterial(Shader'KF_Specimens_Trip_CIRCUS_T.scrake_CIRCUS.scrake_CIRCUS_shdr');
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_CIRCUS_T.scrake_CIRCUS.scrake_CIRCUS_CMB');
	myLevel.AddPrecacheMaterial(Shader'KF_Specimens_Trip_T.scrake_FB');
	myLevel.AddPrecacheMaterial(TexPanner'KF_Specimens_Trip_T.scrake_saw_panner');
}

DefaultProperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_CIRCUS.scrake_CIRCUS'
	Skins(0)=Shader'KF_Specimens_Trip_CIRCUS_T.scrake_CIRCUS.scrake_CIRCUS_shdr'
	Skins(1)=Combiner'KF_Specimens_Trip_CIRCUS_T.scrake_CIRCUS.scrake_CIRCUS_CMB'
	Skins(2)=Shader'KF_Specimens_Trip_T.scrake_FB'
	Skins(3)=TexPanner'KF_Specimens_Trip_T.scrake_saw_panner'

	DetachedArmClass=class'SeveredArmScrake_CIRCUS'
	DetachedSpecialArmClass=class'SeveredArmScrakeSaw'
	DetachedLegClass=class'SeveredLegScrake_CIRCUS'
	DetachedHeadClass=class'SeveredHeadScrake_CIRCUS'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Scrake_Pain'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Scrake_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_CIRCUS.Scrake_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_CIRCUS.Scrake_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_CIRCUS.Scrake_Challenge'

	MoanVoice=Sound'KF_EnemiesFinalSnd_CIRCUS.Scrake_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Scrake_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_CIRCUS.Scrake_Jump'
	AmbientSound=Sound'KF_BaseScrake_CIRCUS.Scrake_Chainsaw_Idle'
	SawAttackLoopSound=Sound'KF_EnemiesFinalSnd_CIRCUS.Scrake_Chainsaw_Impale'
	ChainSawOffSound=Sound'KF_BaseScrake_CIRCUS.Scrake_Chainsaw_Idle'
	MeleeAttackHitSound=Sound'KF_EnemiesFinalSnd_CIRCUS.Scrake_Chainsaw_HitPlayer'

	MenuName="Circus Scrake SN"
}
