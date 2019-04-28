if (instance_exists(Player) && canHitPlayer) {
	if (Player.canHit) {
		signal_emit("PlayerHit");
		PlayerTakeDamage(dmg,dmgType);
	}
}