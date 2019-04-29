if (sm_onEnter(state)) {
	//if (instance_exists(Player)) {
	//	var pdir = point_direction(x,y,Player.x,Player.y);
	//	spd = moveSpd * 10;
	//	vx  = lengthdir_x(spd, pdir);
	//	vy	= lengthdir_y(spd, pdir);
	dashT = 180;
	//	dashing = true;
	//}
	attackDelay = 30;
}
if (attackDelay > 0) {
	attackDelay--;
	if (attackDelay == 10) {
		hitFlash = 5;
	}
	z = 0;
}
if (instance_exists(Player)) {
	if (attackDelay == 0) {
		attackDelay = -1;
		var pdir = point_direction(x,y,Player.x,Player.y);
		spd = moveSpd * 5;
		vx  = lengthdir_x(spd, pdir);
		vy	= lengthdir_y(spd, pdir);
		vz = -4;
		dashT = 30;
		dashing = true;
	}
}
if (!attackDelay) {
	if (dashT) {
		dashT--;
	} else {
		dashing = false;
		sm_change(state, SlimeIdle);
	}
}

if (sm_onExit(state)) {
	//spd = moveSpd; // TODO: is this necessary?
}