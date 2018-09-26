class ZombieScrake_HALLOWEEN extends SnChar.ZombieScrake;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_HALLOWEEN.uax
#exec OBJ LOAD FILE=KF_BaseScrake_HALLOWEEN.uax

DefaultProperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_HALLOWEEN.scrake_HALLOWEEN'

	Skins(0)=Combiner'KF_Specimens_Trip_HALLOWEEN_T.Scrake.Scrake_RedneckZombie_CMB'
	Skins(1)=Combiner'KF_Specimens_Trip_T.scrake_cmb'
	Skins(2)=TexPanner'KF_Specimens_Trip_T.scrake_saw_panner'

	DetachedArmClass=class'SeveredArmScrake_HALLOWEEN'
	DetachedSpecialArmClass=class'SeveredArmScrakeSaw_HALLOWEEN'
	DetachedLegClass=class'SeveredLegScrake_HALLOWEEN'
	DetachedHeadClass=class'SeveredHeadScrake_HALLOWEEN'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Scrake_Pain'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Scrake_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Scrake_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Scrake_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Scrake_Challenge'

	MoanVoice=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Scrake_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Scrake_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Scrake_Jump'
	AmbientSound=Sound'KF_BaseScrake.Scrake_Chainsaw_Idle'
	SawAttackLoopSound=Sound'KF_BaseScrake.Scrake_Chainsaw_Impale'
	ChainSawOffSound=Sound'KF_ChainsawSnd.Chainsaw_Deselect'
	MeleeAttackHitSound=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Scrake_Chainsaw_HitPlayer'

	MenuName="HALLOWEEN Scrake SN"
}
