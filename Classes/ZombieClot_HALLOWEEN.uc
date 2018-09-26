class ZombieClot_HALLOWEEN extends SnChar.ZombieClot;

var Shader ClotSkins[5];

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_HALLOWEEN.uax

simulated function PostBeginPlay()
{
    Super.PostBeginPlay();

  	Skins[0] = ClotSkins[Rand(5)];
}

simulated function SpawnSeveredGiblet( class<SeveredAppendage> GibClass, Vector Location, Rotator Rotation, float GibPerterbation, rotator SpawnRotation )
{
	local SeveredAppendage Giblet;
	local Vector Direction, Dummy;

	if( (GibClass == None) || class'GameInfo'.static.UseLowGore() )
		return;

	Instigator = self;
	Giblet = Spawn( GibClass,,, Location, SpawnRotation );
	if( Giblet == None )
		return;
	Giblet.SpawnTrail();

	GibPerterbation *= 32768.0;
	Rotation.Pitch += ( FRand() * 2.0 * GibPerterbation ) - GibPerterbation;
	Rotation.Yaw += ( FRand() * 2.0 * GibPerterbation ) - GibPerterbation;
	Rotation.Roll += ( FRand() * 2.0 * GibPerterbation ) - GibPerterbation;

	GetAxes( Rotation, Dummy, Dummy, Direction );

	Giblet.Velocity = Velocity + Normal(Direction) * (Giblet.MaxSpeed + (Giblet.MaxSpeed/2) * FRand());

	// Give a little upward motion to the decapitated head
	if( class<SeveredHead>(GibClass) != none )
	{
		Giblet.Skins[0] = Texture'kf_fx_trip_t.Gore.KF_Gore_Limbs_diff';
		Giblet.Skins[1] = Skins[0];
		Giblet.Velocity.Z += 50;
	}

}

simulated function SetOverlayMaterial( Material mat, float time, bool bOverride )
{
    // temporary fix for halloween zed to suppress the blood overlay so we can have great variation
    if(mat != Material'Effects_Tex.PlayerDeathOverlay')
	{
        Super.SetOverlayMaterial(mat,time,bOverride);
    }
}


defaultproperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_HALLOWEEN.clot_HALLOWEEN'
	Skins(0)=Combiner'KF_Specimens_Trip_HALLOWEEN_T.clot.clot_RedneckZombie_CMB'

	ClotSkins(0)=Shader'KF_Specimens_Trip_HALLOWEEN_T.clot.Clot_RedneckZombie_Blood01_SHDR'
	ClotSkins(1)=Shader'KF_Specimens_Trip_HALLOWEEN_T.clot.Clot_RedneckZombie_Blood02_SHDR'
	ClotSkins(2)=Shader'KF_Specimens_Trip_HALLOWEEN_T.clot.Clot_RedneckZombie_Blood03_SHDR'
	ClotSkins(3)=Shader'KF_Specimens_Trip_HALLOWEEN_T.clot.Clot_RedneckZombie_Blood04_SHDR'
	ClotSkins(4)=Shader'KF_Specimens_Trip_HALLOWEEN_T.clot.Clot_RedneckZombie_Blood05_SHDR'

	DetachedArmClass=class'SeveredArmClot_HALLOWEEN'
	DetachedLegClass=class'SeveredLegClot_HALLOWEEN'
	DetachedHeadClass=class'SeveredHeadClot_HALLOWEEN'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Clot_Pain'
	AmbientSound=Sound'KF_BaseClot_HALLOWEEN.Clot_Idle1Loop'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Clot_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Clot_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Clot_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Clot_Challenge'
	MoanVoice=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Clot_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Clot_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Clot_Jump'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_HALLOWEEN.Clot_HitPlayer'

	// Increasing the idle sound so it more closely matches the regular sounds
    SoundVolume=100
    
	MenuName="HALLOWEEN Clot SN"
}
