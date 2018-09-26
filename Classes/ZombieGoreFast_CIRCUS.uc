class ZombieGoreFast_CIRCUS extends SnChar.ZombieGoreFast;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_CIRCUS.uax

static simulated function PreCacheMaterials(LevelInfo myLevel)
{//should be derived and used.
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_CIRCUS_T.gorefast_CIRCUS.gorefast_CIRCUS_CMB');
}

DefaultProperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_CIRCUS.gorefast_CIRCUS'
	Skins(0)=Combiner'KF_Specimens_Trip_CIRCUS_T.gorefast_CIRCUS.gorefast_CIRCUS_CMB'

	DetachedArmClass=class'SeveredArmGorefast_CIRCUS'
	DetachedLegClass=class'SeveredLegGorefast_CIRCUS'

	// Prevent decapitation effects
	DetachedHeadClass=none
	bHeadGibbed=true

	HitSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Gorefast_Pain'
	AmbientSound=Sound'KF_EnemiesFinalSnd_CIRCUS.Gorefast_Idle'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Gorefast_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_CIRCUS.Gorefast_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_CIRCUS.Gorefast_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_CIRCUS.Gorefast_Challenge'
	MoanVoice=Sound'KF_EnemiesFinalSnd_CIRCUS.Gorefast_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Gorefast_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_CIRCUS.Gorefast_Jump'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_CIRCUS.Gorefast_HitPlayer'
	
	MenuName="Circus Gorefast SN"
}
