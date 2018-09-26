class ZombieClot_CIRCUS extends SnChar.ZombieClot;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_CIRCUS.uax

static simulated function PreCacheMaterials(LevelInfo myLevel)
{//should be derived and used.
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_CIRCUS_T.clot_CIRCUS.clot_CIRCUS_CMB');
 }

defaultproperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_CIRCUS.clot_CIRCUS'
	Skins(0)=Combiner'KF_Specimens_Trip_CIRCUS_T.clot_CIRCUS.clot_CIRCUS_CMB'

	DetachedArmClass=class'SeveredArmClot_CIRCUS'
	DetachedLegClass=class'SeveredLegClot_CIRCUS'
	DetachedHeadClass=class'SeveredHeadClot_CIRCUS'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Clot_Pain'
	AmbientSound=Sound'KF_BaseClot_CIRCUS.Clot_Idle1Loop'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Clot_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_CIRCUS.Clot_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_CIRCUS.Clot_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_CIRCUS.Clot_Challenge'
	MoanVoice=Sound'KF_EnemiesFinalSnd_CIRCUS.Clot_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_CIRCUS.Clot_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_CIRCUS.Clot_Jump'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_CIRCUS.Clot_HitPlayer'
	
	MenuName="Circus Clot SN"
}
