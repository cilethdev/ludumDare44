/// @description 
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