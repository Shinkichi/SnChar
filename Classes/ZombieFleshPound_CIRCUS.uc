class ZombieFleshPound_CIRCUS extends SnChar.ZombieFleshpound;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_CIRCUS.uax
#exec OBJ LOAD FILE=KF_Specimens_Trip_CIRCUS_T.utx

// changes colors on Device (notified in anim)
simulated function DeviceGoRed()
{
	Skins[0]= Shader'KF_Specimens_Trip_CIRCUS_T.pound_CIRCUS.pound_CIRCUS_Red_Shdr';
	Skins[1]= Shader'KFCharacters.FPRedBloomShader';
}

simulated function DeviceGoNormal()
{
	Skins[0] = Shader'KF_Specimens_Trip_CIRCUS_T.pound_CIRCUS.pound_CIRCUS_Amber_Shdr';
	Skins[1] = Shader'KFCharacters.FPAmberBloomShader';
}

static simulated function PreCacheMaterials(LevelInfo myLevel)
{//should be derived and used.
	myLevel.AddPrecacheMaterial(Shader'KF_Specimens_Trip_CIRCUS_T.pound_CIRCUS.pound_CIRCUS_Amber_Shdr');
	myLevel.AddPrecacheMaterial(Shader'KFCharacters.FPAmberBloomShader');
	myLevel.AddPrecacheMaterial(Shader'KF_Specimens_Trip_CIRCUS_T.pound_CIRCUS.pound_CIRCUS_Red_Shdr');
	myLevel.AddPrecacheMaterial(Shader'KFCharacters.FPRedBloomShader');
}

defaultproperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_CIRCUS.FleshPound_Circus'
	Skins[0] = Shader'KF_Specimens_Trip_CIRCUS_T.pound_CIRCUS.pound_CIRCUS_Amber_Shdr'
	Skins[1] = Shader'KFCharacters.FPAmberBloomShader'

	DetachedArmClass=class'SeveredArmPound_CIRCUS'
	DetachedLegClass=class'SeveredLegPound_CIRCUS'
	DetachedHeadClass=class'SeveredHeadPound_CIRCUS'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.FP_Pain'
	AmbientSound=Sound'KF_EnemiesFinalSnd_CIRCUS.FP_Idle'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd.FP_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd.FP_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd.FP_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd.FP_Challenge'
	MoanVoice=Sound'KF_EnemiesFinalSnd_CIRCUS.FP_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.FP_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_CIRCUS.FP_Jump'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_CIRCUS.FP_HitPlayer'

	MenuName="Circus Flesh Pound SN"
}
