/// @description 
if (spawnDelay) {
	spawnDelay--;
	exit;
}
if (hp <= 0) {
	if (!hitFlash) {
		instance_destroy();
	}
}

sm_execute(state);

if (x != xprev) {
	facing = x > xprev ? 1 : -1;
	sprite_index = spr_trollWalk;
} else {
	sprite_index = spr_trollIdle;
}
