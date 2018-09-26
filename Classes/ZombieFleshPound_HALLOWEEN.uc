class ZombieFleshPound_HALLOWEEN extends SnChar.ZombieFleshpound;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_HALLOWEEN.uax
#exec OBJ LOAD FILE=KF_Specimens_Trip_HALLOWEEN_T.utx

defaultproperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_HALLOWEEN.FleshPound_HALLOWEEN'

	Skins(0)=Combiner'KF_Specimens_Trip_HALLOWEEN_T.Fleshpound.Fleshpound_RedneckZombie_CMB'

	DetachedArmClass=class'SeveredArmPound_HALLOWEEN'
	DetachedLegClass=class'SeveredLegPound_HALLOWEEN'
	DetachedHeadClass=class'SeveredHeadPound_HALLOWEEN'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.FP_Pain'
	AmbientSound=Sound'KF_BaseFleshpound_HALLOWEEN.FP_Idle1Loop'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.FP_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.FP_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.FP_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.FP_Challenge'
	MoanVoice=Sound'KF_EnemiesFinalSnd_HALLOWEEN.FP_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.FP_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_HALLOWEEN.FP_Jump'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_HALLOWEEN.FP_HitPlayer'

	MenuName="HALLOWEEN Flesh Pound SN"
}
