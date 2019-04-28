if (sm_onEnter(state)) {
	vz = vJump;
	
	// VFX
	xscale = 0.85;
	yscale = 1.35;
	
	onGround = false;
} else if (onGround) {
	var numProjectiles = 8;
	for(var i = 0; i < numProjectiles; i ++) {
	var b = instance_create_depth(x,y,-10000,obj_orb);
		b.speed = 4;
		b.direction = i*(360/numProjectiles);
		var s = 1.2;
		b.image_xscale = s;
		b.image_yscale = s;
	}
	sm_change(state, ChestMimicChase);
}