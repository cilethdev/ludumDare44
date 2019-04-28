if (sm_onEnter(state)) {
	attackT = attackDur;
	if (instance_exists(Player) && Player.canHit) {
		signal_emit("PlayerHit");
		PlayerTakeDamage(dmg, dmgType);
	}
	
	if (debug) image_blend = c_lime;
}

if (attackT) {
	attackT--;
} else {
	
	if (debug) image_blend = c_white;
	sm_change(state, EnemyChase);
}