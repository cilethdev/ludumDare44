if (sm_onEnter(state)) {
	if (instance_exists(Player)) {
		var pdir = point_direction(x,y,Player.x,Player.y);
		spd = moveSpd * 10;
		vx  = lengthdir_x(spd, pdir);
		vy	= lengthdir_y(spd, pdir);
		dashT = attackDur;
		dashing = true;
	}
}

if (dashT) {
	dashT--;
} else {
	dashing = false;
	sm_change(state, SlimeIdle);
}

if (sm_onExit(state)) {
	spd = moveSpd; // TODO: is this necessary?
}