if (sm_onEnter(state)) {
	path_end();
}

image_blend = c_aqua;

vx = Approach(vx,0,0.2);
vy = Approach(vy,0,0.2);

if (hitFlash) {
	hitFlash--;
}

if (hitStun > 0) { 
	hitStun--; 
} else {
	sm_change(state,EnemyIdle);
}

if (sm_onExit(state)) {
	image_blend = c_white;
}