//=============================================================================
// Base Mutator by Vel-San - Contact on Steam using the following Profile Link:
// https://steamcommunity.com/id/Vel-San/
// TODO: Add a config support to change FoV of the Zoom
//=============================================================================

class KFEnhancedMusket extends Mutator;

function PostBeginPlay()
{
    Log("PostBeginPlay() Called in KFEnhancedMusket");
	SetTimer(1, true);
}

function Timer()
{

}

defaultproperties
{
    // Mut Info
    GroupName="KFEnhancedMusket"
    FriendlyName="Enhanced Musket Mutator"
    Description="An Enhanced version of the S. P. Musket;"

    // Client-Side Vars - This 'WILL' Change before Public Release on SteamWorkshop
    RemoteRole=ROLE_SimulatedProxy
	bAlwaysRelevant=true
	bAddToServerPackages=true
}