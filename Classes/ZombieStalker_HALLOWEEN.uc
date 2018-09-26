class ZombieStalker_HALLOWEEN extends SnChar.ZombieStalker;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_HALLOWEEN.uax
#exec OBJ LOAD FILE=KF_Specimens_Trip_HALLOWEEN_T.utx

simulated function Tick(float DeltaTime)
{
	Super(KFMonster).Tick(DeltaTime);
	if( Level.NetMode==NM_DedicatedServer )
		Return; // Servers aren't intrested in this info.

    if( bZapped )
    {
        // Make sure we check if we need to be cloaked as soon as the zap wears off
        NextCheckTime = Level.TimeSeconds;
    }
	else if( Level.TimeSeconds > NextCheckTime && Health > 0 )
	{
		NextCheckTime = Level.TimeSeconds + 0.5;

        if( LocalKFHumanPawn != none && LocalKFHumanPawn.Health > 0 && LocalKFHumanPawn.ShowStalkers() &&
            VSizeSquared(Location - LocalKFHumanPawn.Location) < LocalKFHumanPawn.GetStalkerViewDistanceMulti() * 640000.0 ) // 640000 = 800 Units
        {
			bSpotted = True;
		}
		else
		{
			bSpotted = false;
		}

		if ( !bSpotted && !bCloaked && Skins[0] != Combiner'KF_Specimens_Trip_HALLOWEEN_T.stalker.stalker_RedneckZombie_CMB' )
		{
			UncloakStalker();
		}
		else if ( Level.TimeSeconds - LastUncloakTime > 1.2 )
		{
			// if we're uberbrite, turn down the light
			if( bSpotted && Skins[0] != Finalblend'KFX.StalkerGlow' )
			{
				bUnlit = false;
				CloakStalker();
			}
            else if ( Skins[0] != Shader'KF_Specimens_Trip_HALLOWEEN_T.stalker.stalker_Redneck_Invisible' )
			{
				CloakStalker();
			}
		}
	}
}

simulated function CloakStalker()
{
	if ( bSpotted )
	{
		if( Level.NetMode == NM_DedicatedServer )
			return;

		Skins[0] = Finalblend'KFX.StalkerGlow';
		Skins[1] = Finalblend'KFX.StalkerGlow';
		Skins[2] = Finalblend'KFX.StalkerGlow';
		bUnlit = true;
		return;
	}

	if ( !bDecapitated && !bCrispified ) // No head, no cloak, honey.  updated :  Being charred means no cloak either :D
	{
		Visibility = 1;
		bCloaked = true;

		if( Level.NetMode == NM_DedicatedServer )
			Return;
		Skins[0] = Shader'KF_Specimens_Trip_HALLOWEEN_T.stalker.stalker_Redneck_Invisible';
		Skins[1] = Shader'KF_Specimens_Trip_HALLOWEEN_T.stalker.stalker_Redneck_Invisible';
		// Invisible - no shadow
		if(PlayerShadow != none)
			PlayerShadow.bShadowActive = false;
		if(RealTimeShadow != none)
			RealTimeShadow.Destroy();

		// Remove/disallow projectors on invisible people
		Projectors.Remove(0, Projectors.Length);
		bAcceptsProjectors = false;
		SetOverlayMaterial(Material'KFX.FBDecloakShader', 0.25, true);
	}
}

simulated function UnCloakStalker()
{
	if( !bCrispified )
	{
		LastUncloakTime = Level.TimeSeconds;

		Visibility = default.Visibility;
		bCloaked = false;

		// 25% chance of our Enemy saying something about us being invisible
		if( Level.NetMode!=NM_Client && !KFGameType(Level.Game).bDidStalkerInvisibleMessage && FRand()<0.25 && Controller.Enemy!=none &&
		 PlayerController(Controller.Enemy.Controller)!=none )
		{
			PlayerController(Controller.Enemy.Controller).Speech('AUTO', 17, "");
			KFGameType(Level.Game).bDidStalkerInvisibleMessage = true;
		}
		if( Level.NetMode == NM_DedicatedServer )
			Return;

		if ( Skins[0] != Combiner'KF_Specimens_Trip_HALLOWEEN_T.stalker.stalker_RedneckZombie_CMB' )
		{

			Skins[0] = Combiner'KF_Specimens_Trip_HALLOWEEN_T.stalker.stalker_RedneckZombie_CMB';
            Skins[1] = Combiner'KF_Specimens_Trip_HALLOWEEN_T.stalker.stalker_RedneckZombie_CMB';

			if (PlayerShadow != none)
				PlayerShadow.bShadowActive = true;

			bAcceptsProjectors = true;

			SetOverlayMaterial(Material'KFX.FBDecloakShader', 0.25, true);
		}
	}
}

function RemoveHead()
{
	Super(KFMonster).RemoveHead();

	if (!bCrispified)
	{
		Skins[0] = Combiner'KF_Specimens_Trip_HALLOWEEN_T.stalker.stalker_RedneckZombie_CMB';
		Skins[1] = Combiner'KF_Specimens_Trip_HALLOWEEN_T.stalker.stalker_RedneckZombie_CMB';
	}
}

simulated function PlayDying(class<DamageType> DamageType, vector HitLoc)
{
	Super(KFMonster).PlayDying(DamageType,HitLoc);

	if(bUnlit)
		bUnlit=!bUnlit;

    LocalKFHumanPawn = none;

	if (!bCrispified)
	{
		Skins[0] = Combiner'KF_Specimens_Trip_HALLOWEEN_T.stalker.stalker_RedneckZombie_CMB';
		Skins[1] = Combiner'KF_Specimens_Trip_HALLOWEEN_T.stalker.stalker_RedneckZombie_CMB';
	}
}

defaultproperties
{
	Mesh=SkeletalMesh'KF_Freaks_Trip_HALLOWEEN.stalker_HALLOWEEN'

	Skins(0)=Shader'KF_Specimens_Trip_HALLOWEEN_T.stalker.stalker_Redneck_Invisible'
	Skins(1)=Shader'KF_Specimens_Trip_HALLOWEEN_T.stalker.stalker_Redneck_Invisible'

	DetachedArmClass=class'SeveredArmStalker_HALLOWEEN'
	DetachedLegClass=class'SeveredLegStalker_HALLOWEEN'
	DetachedHeadClass=class'SeveredHeadStalker_HALLOWEEN'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Stalker_Pain'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Stalker_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Stalker_Jump'
	AmbientSound=Sound'KF_BaseStalker.Stalker_IdleLoop'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Stalker_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Stalker_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Stalker_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Stalker_Challenge'
	MoanVoice=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Stalker_Talk'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_HALLOWEEN.Stalker_HitPlayer'

	// Reducing the sound volume for the stalker halloween sounds because they are pretty high pitched
    TransientSoundVolume=0.600000
	GruntVolume=0.250000
	MoanVolume=1.0

	MenuName="HALLOWEEN Stalker"
}
