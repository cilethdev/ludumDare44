if (sm_onEnter(state)) {
	image_blend = c_red;
	warmup = 160;
	canHit = false;
}

if (warmup > 0) {
	image_blend = c_red;
	warmup--;
} else if (warmup == 0) {
	image_blend = c_red;
	var pdir = point_direction(x,y,Player.x,Player.y);
	spd = moveSpd * 10;
	vx  = lengthdir_x(spd, pdir);
	vy	= lengthdir_y(spd, pdir);
	dashT = attackDur;
	dashing = true;
	warmup--;
} else {
	if (dashT) {
		image_blend = c_red;
		dashT--;
	} else {
		image_blend = c_white;
		vx = 0;
		vy = 0;
		dashing = false;
	
		var numProjectiles = 4;
		for(var i = 0; i < numProjectiles; i ++) {
		var b = instance_create_depth(x,y,-10000,boss_orb_short_lifetime);
			b.speed = 6;
			b.direction = i*(360/numProjectiles) + 45;
			var s = random_range(1, 1.6);
			b.image_xscale = s;
			b.image_yscale = s;
		}
		canHit = true;
		sm_change(state, BossMoveChoose);
	}
}
