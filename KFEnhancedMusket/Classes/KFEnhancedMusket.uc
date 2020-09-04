//=============================================================================
// Base Mutator by Vel-San - Contact on Steam using the following Profile Link:
// https://steamcommunity.com/id/Vel-San/
// TODO: Add a config support to change FoV of the Zoom
//=============================================================================

class KFEnhancedMusket extends Mutator;

function ModifyPlayer(Pawn Player)
{
     Super.ModifyPlayer(Player);
     Log("KFEnhancedMusket Enabled - Weapon will be given on StartUp!");
     Player.GiveWeapon("KFEnhancedMusket.EnhancedMusket");
}

defaultproperties
{
    // Mut Info
    GroupName="KFEnhancedMusket"
    FriendlyName="Enhanced Musket Mutator - v2.0"
    Description="An Enhanced version of the S. P. Musket; If enabled, you will spawn with the weapon automatically! - By Vel-San"

    // Mandatory Vars
	bAddToServerPackages=true
}