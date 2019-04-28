/// @description 
if (hp <= 0) {
	if (!hitFlash) {
		instance_destroy();
	}
}

show_debug_message(sm_getCurrentString(state));
sm_execute(state);