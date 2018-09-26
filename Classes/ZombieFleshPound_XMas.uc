class ZombieFleshPound_XMas extends SnChar.ZombieFleshpound;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_Xmas.uax

// changes colors on Device (notified in anim)
simulated function DeviceGoRed()
{
	Skins[2]=Shader'KFCharacters.FPRedBloomShader';
}

simulated function DeviceGoNormal()
{
	Skins[2] = Shader'KFCharacters.FPAmberBloomShader';
}

static simulated function PreCacheMaterials(LevelInfo myLevel)
{//should be derived and used.
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_XMAS_T.NutPound.NutPound_cmb');
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_XMAS_T.NutPound_env_cmb');
	myLevel.AddPrecacheMaterial(Texture'KF_Specimens_Trip_XMAS_T.NutPounder_T');
	//myLevel.AddPrecacheMaterial(Material'KF_Specimens_Trip_XMAS_T.NutPound.nutpound_hair_fb');
}

DefaultProperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_Xmas.NutPound'
	Skins(0)=Combiner'KF_Specimens_Trip_XMAS_T.NutPound.NutPound_cmb'
	Skins(1)=FinalBlend'KF_Specimens_Trip_XMAS_T.NutPound.nutpound_hair_fb'
	Skins(2)=Shader'KFCharacters.FPAmberBloomShader'

	DetachedArmClass=class'SeveredArmPound_XMas'
	DetachedLegClass=class'SeveredLegPound_XMas'
	DetachedHeadClass=class'SeveredHeadPound_XMas'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.FP_Pain'
	AmbientSound=Sound'KF_EnemiesFinalSnd_Xmas.FP_Idle'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd.FP_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd.FP_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd.FP_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd.FP_Challenge'
	MoanVoice=Sound'KF_EnemiesFinalSnd_Xmas.FP_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.FP_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_Xmas.FP_Jump'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_Xmas.FP_HitPlayer'

	MenuName="Christmas Flesh Pound SN"
}
