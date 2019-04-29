depth = -y;
repeat(abs(vx)) {
	if (!place_meeting(x+sign(vx),y,Solid)) {
		x += sign(vx);
	} else {
		vx = 0;
		break;
	}
}

repeat(abs(vy)) {
	if (!place_meeting(x,y+sign(vy),Solid)) {
		y += sign(vy);
	} else {
		vy = 0;
		break;
	}
}

BossVelocity();

// sqaush n stretch
xscale = Approach(xscale,1,0.033);
yscale = Approach(yscale,1,0.033);