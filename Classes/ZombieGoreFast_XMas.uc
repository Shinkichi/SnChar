class ZombieGoreFast_XMas extends SnChar.ZombieGoreFast;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_Xmas.uax
#exec OBJ LOAD FILE=KF_Specimens_Trip_XMAS_T.utx

static simulated function PreCacheMaterials(LevelInfo myLevel)
{//should be derived and used.
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_XMAS_T.GingerFast.GingerFast_cmb');
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_XMAS_T.GingerFast_env_cmb');
	//myLevel.AddPrecacheMaterial(Texture'KF_Specimens_Trip_XMAS_T.GingerFast_cmb');
}

DefaultProperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_Xmas.GingerFast'
	Skins(0)=Combiner'KF_Specimens_Trip_XMAS_T.GingerFast.GingerFast_cmb'

	DetachedArmClass=class'SeveredArmGorefast_XMas'
	DetachedLegClass=class'SeveredLegGorefast_Xmas'
	DetachedHeadClass=class'SeveredHeadGorefast_XMas'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Gorefast_Pain'
	AmbientSound=Sound'KF_EnemiesFinalSnd_Xmas.Gorefast_Idle'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Gorefast_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_Xmas.Gorefast_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_Xmas.Gorefast_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_Xmas.Gorefast_Challenge'
	MoanVoice=Sound'KF_EnemiesFinalSnd_Xmas.Gorefast_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Gorefast_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_Xmas.Gorefast_Jump'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_Xmas.Gorefast_HitPlayer'
	
	MenuName="Christmas Gorefast SN"
}
