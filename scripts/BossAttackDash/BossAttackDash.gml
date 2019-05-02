if (sm_onEnter(state)) {
	dashDelay = 60;
	dashing = false;
	dashT = 120;
}

if (dashDelay) {
	dashDelay--;
	xscale = 1.2;
	yscale = 0.8;
} else {
	if (!dashing) {
		dashing = true;
		
		// DASH
		if (instance_exists(Player)) {
			var dir = point_direction(x,y,Player.x,Player.y-16) ;
			vx = lengthdir_x(dashSpd,dir);
			vy = lengthdir_y(dashSpd,dir);
		}
	}
	if (dashT) {
		dashT--;
		
		if (place_meeting(x+vx,y,Solid) || place_meeting(x,y+vy,Solid)) {
			
			CamShake(0.5,0.25,0.5);
			vx = 0;
			vy = 0;
			dashT = 0;
			repeat(irandom_range(2,6)) {
				var c = instance_create_depth((room_width/2)+random_range(-96,96),(room_height/2)+random_range(-96,96),depth,coin);
					c.z = random_range(-96,128);
			}
		}
	} else {
		vx = 0;
		vy = 0;
		sm_change(state,BossWait);
	}

}
if (sm_onExit(state)) {
	
}