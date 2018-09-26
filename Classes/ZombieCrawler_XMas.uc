class ZombieCrawler_XMas extends SnChar.ZombieCrawler;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_Xmas.uax

static simulated function PreCacheMaterials(LevelInfo myLevel)
{//should be derived and used.
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_XMAS_T.ReinDeer.ReinDeer_cmb');
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_XMAS_T.ReinDeer_env_cmb');
	myLevel.AddPrecacheMaterial(Texture'KF_Specimens_Trip_XMAS_T.ReinDeer');
}

DefaultProperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_Xmas.RainDeer'
	Skins(0)=Combiner'KF_Specimens_Trip_XMAS_T.ReinDeer.ReinDeer_cmb'

	DetachedArmClass=class'SeveredArmCrawler_XMas'
	DetachedLegClass=class'SeveredLegCrawler_XMas'
	DetachedHeadClass=class'SeveredHeadCrawler_XMas'

	MoanVoice=Sound'KF_EnemiesFinalSnd_Xmas.Crawler_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Crawler_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_Xmas.Crawler_Jump'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Crawler_Acquire'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_Xmas.Crawler_Acquire'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_Xmas.Crawler_Acquire'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_Xmas.Crawler_Acquire'
	AmbientSound=Sound'KF_EnemiesFinalSnd_Xmas.Crawler_Idle'
	HitSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Crawler_Pain'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_Xmas.Crawler_HitPlayer'
	
	MenuName="Christmas Crawler SN"
}
