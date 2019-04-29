if (sm_onEnter(state)) {
	sprite_index = spr_bossIdle;
	shake = 70;
	wait = 300;
}

if (shake > 0) {
	shake--;
} else if (wait) {
	wait--;
} else {
	var nextState = choose(BossSlam, BossDash);
    sm_change(state, nextState);
}