if (sm_onEnter(state)) {
	var pdir = point_direction(x,y,Player.x,Player.y);
	spd = moveSpd * 10;
	vx  = lengthdir_x(spd, pdir);
	vy	= lengthdir_y(spd, pdir);
	dashT = attackDur;
	dashing = true;
	canHit = false;
}

if (dashT) {
	dashT--;
} else {
	canHit = true;
	dashing = false;
	sm_change(state, EnemyIdle);
}

if (sm_onExit(state)) {
	spd = moveSpd; // TODO: is this necessary?
}