//=============================================================================
// Contact Vel-San for feedback, fixes or questions.
//=============================================================================

class KFMusketZoom extends Mutator;

function PostBeginPlay()
{
    Log("PostBeginPlay() Called in KFMusketZoom");
	SetTimer(1, true);
}

function Timer()
{

}

defaultproperties
{
    // Mut Info
    GroupName="KFEMusketZoom"
    FriendlyName="KFMusketZoom"
    Description="Simple Mutator that increases the zoom on the S.P Musket"

    // Client-Side Vars
    RemoteRole=ROLE_SimulatedProxy
	bAlwaysRelevant=true
	bAddToServerPackages=true
}