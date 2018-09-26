class ZombieHusk_HALLOWEEN extends SnChar.ZombieHusk;

#exec OBJ LOAD FILE=KF_EnemiesFinalSnd_HALLOWEEN.uax

function SpawnTwoShots()
{
	local vector X,Y,Z, FireStart;
	local rotator FireRotation;
	local KFMonsterController KFMonstControl;

	if( Controller!=None && KFDoorMover(Controller.Target)!=None )
	{
		Controller.Target.TakeDamage(22,Self,Location,vect(0,0,0),Class'DamTypeVomit');
		return;
	}

	GetAxes(Rotation,X,Y,Z);
	FireStart = GetBoneCoords('Barrel').Origin;
	if ( !SavedFireProperties.bInitialized )
	{
		SavedFireProperties.AmmoClass = Class'SkaarjAmmo';
		SavedFireProperties.ProjectileClass = Class'HuskFireProjectile_HALLOWEEN';
		SavedFireProperties.WarnTargetPct = 1;
		SavedFireProperties.MaxRange = 65535;
		SavedFireProperties.bTossed = False;
		SavedFireProperties.bTrySplash = true;
		SavedFireProperties.bLeadTarget = True;
		SavedFireProperties.bInstantHit = False;
		SavedFireProperties.bInitialized = True;
	}

    // Turn off extra collision before spawning vomit, otherwise spawn fails
    ToggleAuxCollision(false);

	FireRotation = Controller.AdjustAim(SavedFireProperties,FireStart,600);

	foreach DynamicActors(class'KFMonsterController', KFMonstControl)
	{
        if( KFMonstControl != Controller )
        {
            if( PointDistToLine(KFMonstControl.Pawn.Location, vector(FireRotation), FireStart) < 75 )
            {
                KFMonstControl.GetOutOfTheWayOfShot(vector(FireRotation),FireStart);
            }
        }
	}

    Spawn(Class'HuskFireProjectile_HALLOWEEN',,,FireStart,FireRotation);

	// Turn extra collision back on
	ToggleAuxCollision(true);
}

DefaultProperties
{
	Mesh=SkeletalMesh'KF_Freaks2_Trip_HALLOWEEN.husk_HALLOWEEN'

	Skins(0)=Combiner'KF_Specimens_Trip_HALLOWEEN_T.Husk.husk_RedneckZombie_CMB'

	DetachedArmClass=class'SeveredArmHusk_HALLOWEEN'
	DetachedLegClass=class'SeveredLegHusk_HALLOWEEN'
	DetachedHeadClass=class'SeveredHeadHusk_HALLOWEEN'
	DetachedSpecialArmClass=class'SeveredArmHuskGun_HALLOWEEN'

	HitSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Husk_Pain'
	AmbientSound=Sound'KF_BaseHusk_HALLOWEEN.Husk_IdleLoop'
	ChallengeSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Husk_Challenge'
	ChallengeSound(1)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Husk_Challenge'
	ChallengeSound(2)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Husk_Challenge'
	ChallengeSound(3)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Husk_Challenge'
	MoanVoice=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Husk_Talk'
	DeathSound(0)=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Husk_Death'
	JumpSound=Sound'KF_EnemiesFinalSnd_HALLOWEEN.Husk_Jump'
	MeleeAttackHitSound=sound'KF_EnemiesFinalSnd_HALLOWEEN.Bloat_HitPlayer'
	ProjectileBloodSplatClass=class'ROEffects.ROBulletHitMetalEffect'
	
	MenuName="HALLOWEEN Husk SN"
}
