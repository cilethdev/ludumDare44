if (sm_onEnter(state)) {
	fireDelay = 30;
}
if (fireDelay) {
	fireDelay--;
} else {
	for(var i = 0; i < 24; i ++) {
		var b = instance_create_depth(x,y,depth-400,obj_orb);
			b.speed = 3;
			b.direction = i*(360/24);
			var s = random_range(0.8,1.2);
			b.image_xscale = s;
			b.image_yscale = s;
	}
	sm_change(state,BossWait);
}

if (sm_onExit(state)) {
	
}