/// @description 
if (!instance_exists(Player)) {
	exit;
}
with(other) {
	if (!canHit) {
		exit;
	}
	hp -= other.dmg;
	var dt = instance_create_layer(x,bbox_top,"Instances",DmgText);
		if (instance_exists(PlayerStats)) {
			PlayerStats.damageDealt += other.dmg;
		}
		dt.text = string(other.dmg);
		dt.owner = id;
		dt.col = c_white;
		
		
	hitFlash = 8;
}

instance_destroy();