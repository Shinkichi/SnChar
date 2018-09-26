class ZombieClot_XMas extends SnChar.ZombieClot;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_Xmas.uax
#exec OBJ LOAD FILE=KF_Specimens_Trip_XMAS_T.utx

static simulated function PreCacheMaterials(LevelInfo myLevel)
{//should be derived and used.
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_XMAS_T.Clot_Elf.Clot_Elf_cmb');
	myLevel.AddPrecacheMaterial(Combiner'KF_Specimens_Trip_XMAS_T.clot_elf_env_cmb');
	myLevel.AddPrecacheMaterial(Texture'KF_Specimens_Trip_XMAS_T.clot_elf_diff');
	//myLevel.AddPrecacheMaterial(Texture'KF_Specimens_Trip_T.clot_spec');
}


DefaultProperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_Xmas.CLOT_Elf'
	Skins(0)=Combiner'KF_Specimens_Trip_XMAS_T.Clot_Elf.Clot_Elf_cmb'

	DetachedArmClass=class'SeveredArmClot_XMas'
	DetachedLegClass=class'SeveredLegClot_XMas'
	DetachedHeadClass=class'SeveredHeadClot_XMas'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Clot_Pain'
	AmbientSound=Sound'KF_EnemiesFinalSnd_Xmas.Clot_IdleLoop'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Clot_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_Xmas.Clot_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_Xmas.Clot_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_Xmas.Clot_Challenge'
	MoanVoice=Sound'KF_EnemiesFinalSnd_Xmas.Clot_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_Xmas.Clot_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_Xmas.Clot_Jump'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_Xmas.Clot_HitPlayer'
	
	MenuName="Christmas Clot SN"
}
