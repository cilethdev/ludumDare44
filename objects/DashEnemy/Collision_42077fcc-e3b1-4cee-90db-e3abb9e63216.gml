/// @description 

if (instance_exists(Player)) {
	if (Player.canHit && dashing) {
		signal_emit("PlayerHit");
		PlayerTakeDamage(dmg,dmgType,false);
	}
}