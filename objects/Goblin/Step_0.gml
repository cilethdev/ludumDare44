/// @description 
if (hp <= 0) {
	if (!hitFlash) {
		instance_destroy();
	}
}
facing = x > xprev ? 1 : -1;
xprev = x;
sm_execute(state);