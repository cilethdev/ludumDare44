if (sm_onEnter(state)) {
	image_blend = c_orange;
	warmup = 250;
	canHit = false;
}

if (warmup) {
	warmup--;
} else {
	var pdir = point_direction(x,y,Player.x,Player.y);
	projectileX = x + lengthdir_x(20,pdir);
	projectileY = y + lengthdir_y(20,pdir);
	var b = instance_create_depth(projectileX,projectileY,-10000,boss_orb_mega);
		b.speed = 3;
		b.direction = pdir;
		var s = 5.5;
		b.image_xscale = s;
		b.image_yscale = s;
	canHit = true;
	sm_change(state, BossMoveChoose);
}

if (sm_onExit(state)) {
	image_blend = c_white;
}