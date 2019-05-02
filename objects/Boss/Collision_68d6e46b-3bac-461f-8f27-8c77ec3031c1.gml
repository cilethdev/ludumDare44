/// @description 
if (instance_exists(Player)) {
	if (Player.canHit) {
		signal_emit("PlayerHit");
		PlayerTakeDamage(15,"heavy",false);
	}
}