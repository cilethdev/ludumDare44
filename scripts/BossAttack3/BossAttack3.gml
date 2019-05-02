if (sm_onEnter(state)) {
	fireDelay = 30;
	bulletCount = 0;
	bulletFireT = 0;
	
}


if (fireDelay) {
	fireDelay--;
} else {
	if (bulletCount < 10) {
		bulletFireT = (bulletFireT + 1) mod 8;
		if (bulletFireT == 1) {
			bulletCount++;
			if (instance_exists(Player)) {
				var b = instance_create_depth(x,y,depth-400,obj_orb);
					b.speed = 4;
					b.direction = point_direction(x,y,Player.x,Player.y-16);
			}
		}
	} else {
		sm_change(state,BossWait);
	}
}

if (sm_onExit(state)) {
	
}