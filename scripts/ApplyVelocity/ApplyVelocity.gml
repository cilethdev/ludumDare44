if(!place_meeting(x+vx,y,Solid)) {
	x += vx;
} else {
	repeat(abs(vx)) {
		if(!place_meeting(x+sign(vx),y,Solid)) {
			x += sign(vx);
		} else {
			vx = 0;
			break;
		}
	}
}

if(!place_meeting(x,y+vy,Solid)) {
	y += vy;
} else {
	repeat(abs(vy)) {
		if(!place_meeting(x,y+sign(vy),Solid)) {
			y += sign(vy);
		} else {
			vy = 0;
			break;
		}
	}
}

repeat(abs(vz)) {
	if (!(z+sign(vz) > 0)) {
		z += sign(vz);
	} else {
		vz = 0;
		break;
	}
}