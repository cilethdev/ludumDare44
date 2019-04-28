if (sm_onEnter(state)) {
	canHit = false;
	var dir = point_direction(x,y-16,mouse_x,mouse_y);
	moveDir = dir;
	spd = vDash;
	vx  = lengthdir_x(vDash,dir);
	vy	= lengthdir_y(vDash,dir);
	dashT = dashDur;
	
	sprite_index = spr_heroDash;
}

	CamShake(0.2,0.2,0.1);
if (dashT) {
	dashT--;
} else {
	sm_change(state,PlayerNormal);
}

if (sm_onExit(state)) {
	spd = stats.stats[itemProps.ms];
	canHit = true;
}