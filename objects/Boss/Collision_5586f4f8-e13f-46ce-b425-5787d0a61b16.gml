if (instance_exists(Player) && Player.canHit && onGround) {
	signal_emit("PlayerHit");
	PlayerTakeDamage(dmg / 2, "heavy");
}