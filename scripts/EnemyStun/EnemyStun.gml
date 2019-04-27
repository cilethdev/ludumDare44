if (sm_onEnter(state)) {
	path_end();
	image_blend = c_white;
}

if (hitFlash) {
	hitFlash--;
}

if (hitStun) { 
	hitStun--; 
} else {
	sm_change(state,EnemyIdle);
}

if (sm_onExit(state)) {
	
}