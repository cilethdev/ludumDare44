if (sm_onEnter(state)) {
	vz = vJump;
	
	// VFX
	xscale = 0.85;
	yscale = 1.35;
	
	onGround = false;
	
	var pdir = point_direction(x,y,Player.x,Player.y);
	spd = moveSpd * 2;
	vx  = lengthdir_x(spd, pdir);
	vy	= lengthdir_y(spd, pdir);
	
} else if (onGround) {
	vx = 0;
	vy = 0;
	var numProjectiles = irandom_range(4, 6);
	for(var i = 0; i < numProjectiles; i ++) {
	var b = instance_create_depth(x,y,-10000,boss_orb);
		b.speed = 6;
		b.direction = i*(360/numProjectiles);
		var s = random_range(1, 1.6);
		b.image_xscale = s;
		b.image_yscale = s;
	}
	sm_change(state, BossMoveChoose);
}