//=============================================================================
// Base Mutator for EnhancedMusketShopMut by Vel-San - Contact on Steam using the following Profile Link:
// https://steamcommunity.com/id/Vel-San/
//=============================================================================
class EnhancedMusketShopMut extends Mutator;

simulated function PostBeginPlay()
{
   SetTimer(0.1,false)  ;

}

 function Timer()
{
	local KFGameType KF;

	KF = KFGameType(Level.Game);
	if ( KF!=None )
	{
		if( KF.KFLRules!=None )
			KF.KFLRules.Destroy();
		KF.KFLRules = Spawn(class'KFEnhancedMusket.EnhancedMusketLevelRules');
	}

}

function bool CheckReplacement(Actor Other, out byte bSuperRelevant)
{
	if( KFRandomItemSpawn(Other)!=None )
		AddPickup(KFRandomItemSpawn(Other));
	return true;
}

final function AddPickup( KFRandomSpawn K )
{
	local int i;

	for( i=0; i<ArrayCount(K.PickupClasses); ++i )
		if( K.PickupClasses[i]==None )
		{
			K.PickupClasses[i] = Class'KFEnhancedMusket.EnhancedMusketPickup';
			K.PickupWeight[i] = 2;
			break;
		}
}

defaultproperties
{
    // Mandatory Vars
    bAddToServerPackages=True
    bAlwaysRelevant=True
    RemoteRole=ROLE_SimulatedProxy

    // Mut Vars
    GroupName="KFEnhancedMusketShopMut"
    FriendlyName="Enhanced Musket Shop Mutator - v2.0"
    Description="This Mutator 'Replaces' the S.P Musket with an Enhanced Version in the trader shop! - By Vel-San"

}
