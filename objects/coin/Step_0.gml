/// @description 
depth = -y;
if (z + sign(vz) < 0) {
	vz = Approach(vz,10,0.3);
} else {
	if (vz > 0.5) {
		vz *= -e;
		vx *= e;
		vy *= e;
	} else {
		vz = 0;
	}
}
z += vz;

if (vz == 0) {
	vx = Approach(vx,0,0.1);
	vy = Approach(vx,0,0.1);
} else {
	if (!place_meeting(x+vx,y,Solid) || place_meeting(x,y,obj_chest)) {
		x += vx;
	} else {
		vx *= -e;
	}
	
	if (!place_meeting(x,y+vy,Solid)|| place_meeting(x,y,obj_chest)) {
		y += vy;
	} else {
		vy *= -e;
	}
}