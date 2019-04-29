/// @description 

if (instance_exists(Player)) {
	if (Player.canHit) {
		signal_emit("PlayerHit");
		instance_destroy();
		PlayerTakeDamage(dmg,"heavy");
	}
}