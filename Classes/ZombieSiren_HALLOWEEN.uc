class ZombieSiren_HALLOWEEN extends SnChar.ZombieSiren;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_HALLOWEEN.uax

DefaultProperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_HALLOWEEN.Siren_HALLOWEEN'

	Skins(0)=Combiner'KF_Specimens_Trip_HALLOWEEN_T.Siren.siren_RedneckZombie_CMB'

	Skins(1)=FinalBlend'KF_Specimens_Trip_HALLOWEEN_T.siren.Siren_RedneckZombie_Hair_FB'

	DetachedHeadClass=class'SeveredHeadSiren_HALLOWEEN'
    DetachedArmClass=none
	DetachedLegClass=class'SeveredLegSiren_HALLOWEEN'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Siren_Pain'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Siren_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Siren_Jump'
	AmbientSound=Sound'KF_BaseSiren_HALLOWEEN.Siren_IdleLoop'
	MoanVoice=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Siren_Talk'

	MenuName="HALLOWEEN Siren SN"
}
