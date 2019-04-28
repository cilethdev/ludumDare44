/// @description 
if (hp <= 0) {
	if (!hitFlash) {
		instance_destroy();
	}
}

sm_execute(state);