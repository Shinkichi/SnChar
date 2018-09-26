class ZombieGorefast_HALLOWEEN extends SnChar.ZombieGoreFast;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_HALLOWEEN.uax

DefaultProperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_HALLOWEEN.gorefast_HALLOWEEN'
	Skins(0)=Combiner'KF_Specimens_Trip_HALLOWEEN_T.gorefast.gorefast_RedneckZombie_CMB'

    SeveredLeftArm=none;
	DetachedArmClass=class'SeveredArmGorefast_HALLOWEEN'
	DetachedLegClass=class'SeveredLegGorefast_HALLOWEEN'
	DetachedHeadClass=class'SeveredHeadGorefast_HALLOWEEN'

	// Prevent decapitation effects

	HitSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Gorefast_Pain'
	AmbientSound=Sound'KF_BaseGorefast_HALLOWEEN.Gorefast_Idle'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Gorefast_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Gorefast_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Gorefast_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Gorefast_Challenge'
	MoanVoice=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Gorefast_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Gorefast_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Gorefast_Jump'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_HALLOWEEN.Gorefast_HitPlayer'

	MenuName="HALLOWEEN Gorefast SN"
}
