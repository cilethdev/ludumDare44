/// @desc PlayerTakeDamage(dmg,strength);
/// @arg dmg
/// @arg strength
var _dmg = argument0;
var _str = argument1;

if (instance_exists(Player)) {
	with(Player) {
		hp -= _dmg;
		hitFlash = 15;
	}
}

signal_emit("TakeDmg");

switch(_str) {
	case "light":
		CamShake(0.33,0.33,0.15);
		break;
	case "medium":
		CamShake(0.5,0.5,0.5);
		break;
	case "heavy":
		CamShake(0.75,0.75,0.75);
		break;
}

var dt = instance_create_layer(x,bbox_top,"Instances",DmgText);
	dt.text = "-"+string(_dmg);
	dt.owner = id;
	dt.col = make_colour_hsv(255,255,255);
	
// SFX
PlaySound(Player.hitSounds[irandom(3)],1,1,0);