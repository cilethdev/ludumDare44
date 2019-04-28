/// @description 
if (!instance_exists(owner)) {
	instance_destroy();
} else {
	t = (t+inc) mod 360;
	var floatOffset = amp*sin(degtorad(t));
	
	swingOffset = lerp(swingOffset,swingOffsetTarget,0.3);
	
	switch(state) {
		case TRAIL:
			trailOffset = lerp(trailOffset,-32,0.05);
			x = lerp(x,owner.x+(owner.facing*trailOffset),0.05);
			y = lerp(y,owner.y-16+floatOffset,0.05);
			image_yscale = 1;
			image_angle = ((floatOffset*3)*1)+(swingOffset*1);
		break;
		case ONPLAYER:
			var mdir = point_direction(owner.x,owner.y-16,mouse_x,mouse_y);
			var ys = mouse_x > x ? 1 : -1;
			var ldx = lengthdir_x(22,mdir+(swingOffset*ys));
			var ldy = lengthdir_y(22,mdir+(swingOffset*ys));
			x = lerp(x,owner.x+ldx,0.3);
			y = lerp(y,owner.y-16+ldy+floatOffset,0.3);
			depth = -y;
			var ysSwingOffset = 1;
			if (swingOffsetTarget != 0) {
				ysSwingOffset = swingOffsetTarget > 0 ? 1 : -1;
			} 
			image_yscale = ys * ysSwingOffset;
			image_angle = mdir+((floatOffset*3)*ys)+(swingOffset*ys);
			
			if (trailT > 0) {
				trailT--;
			}
			if (trailT == 0) {
				trailOffset = 32;
				trailT = -1;
				state = TRAIL;
			}
		break;
	}
	
}

//if (mouse_check_button_pressed(mb_left)) {
//	state = ONPLAYER;
//	trailT = 180;
//	swingResetT = 90;
//	if (swingOffsetTarget == 0) {
//		swingOffsetTarget = 65;
//	}
//	swingOffsetTarget *= -1;
//}

if (swingResetT > 0) {
	swingResetT--;
}
if (swingResetT == 0) {
	swingResetT = -1;
	swingOffsetTarget = 0;
}