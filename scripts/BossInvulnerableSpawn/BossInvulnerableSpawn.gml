if (sm_onEnter(state)) {
	sprite_index = spr_bossIdle;
	image_blend = c_gray;
	canHit = false;
	warmup = 360;
	shake = 60;
	shouldSpawn = true;
}

if (warmup) {
	warmup--;
	shake--;
} else if (shouldSpawn) {
	for(var i = 0; i < minionSpawn; i ++) {
		summonedEnemies[i] = instance_create_depth(x,y,depth-32,randomBossEnemy);
	}
	shouldSpawn = false;
} else {
	var shouldBecomeVulnerable = true;
	for (var i = 0; i < array_length_1d(summonedEnemies); i++) {
		if (instance_exists(summonedEnemies[i])) {
			shouldBecomeVulnerable = false;
		}
	}

	if (shouldBecomeVulnerable) {
		sm_change(state, BossMoveChoose);
	}	
}

if (sm_onExit(state)) {
	image_blend = c_white;
	canHit = true;
	summonedEnemies = 0;
}