if (sm_onEnter(state)) {
	sprite_index = spr_bossIdle;
	shake = 70;
}

if (shake > 0) {
	shake--;
} else {
	var nextState;
	if (hp <= (hpMax * 0.75) && !stage2) {
		nextState = BossInvulnerableSpawn;
		stage2 = true;
		minionSpawn = 4;
	} else if (hp <= (hpMax * 0.5) && !stage3) {
		nextState = BossInvulnerableSpawn;
		stage3 = true;
		minionSpawn = 6;
	} else if (hp <= (hpMax * 0.25) && !stage4) {
		nextState = BossInvulnerableSpawn;
		stage4 = true;
		minionSpawn = 10;
	} else {
		nextState = choose(BossSlam, BossDash, BossProjectile);
	}
	sprite_index = spr_bossAttack;
    sm_change(state, nextState);
}