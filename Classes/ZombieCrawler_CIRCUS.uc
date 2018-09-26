class ZombieCrawler_CIRCUS extends SnChar.ZombieCrawler;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_CIRCUS.uax

static simulated function PreCacheMaterials(LevelInfo myLevel)
{//should be derived and used.
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_CIRCUS_T.crawler_CIRCUS.crawler_CIRCUS_CMB');
}

defaultproperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_CIRCUS.crawler_CIRCUS'
	Skins(0)=Combiner'KF_Specimens_Trip_CIRCUS_T.crawler_CIRCUS.crawler_CIRCUS_CMB'

	DetachedArmClass=class'SeveredArmCrawler_CIRCUS'
	DetachedLegClass=class'SeveredLegCrawler_CIRCUS'
	DetachedHeadClass=class'SeveredHeadCrawler_CIRCUS'

	MoanVoice=Sound'KF_EnemiesFinalSnd_CIRCUS.Crawler_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Crawler_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_CIRCUS.Crawler_Jump'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Crawler_Acquire'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_CIRCUS.Crawler_Acquire'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_CIRCUS.Crawler_Acquire'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_CIRCUS.Crawler_Acquire'
	AmbientSound=Sound'KF_EnemiesFinalSnd_CIRCUS.Crawler_Idle'
	HitSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Crawler_Pain'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_CIRCUS.Crawler_HitPlayer'
	
	MenuName="Circus Crawler SN"
}
