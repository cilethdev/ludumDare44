/// @description 
if (life) {
	life--;
	if (z < 0) {
		vz = Approach(vz,10,0.1);
	} else {
		vz *= -0.9;
	}
	z += vz;
	image_angle = point_direction(xprev,yprev+z,x,y+z);
	
	instance_create_depth(x+random_range(-4,4),y+z+random_range(-4,4),depth+100,spell_fireball_trail);
	instance_create_depth(x+random_range(-6,6),y+z+random_range(-6,6),depth-1,spell_fireball_ember);
} else {
	instance_destroy();
}
depth = -y-100;
xprev = x;
yprev = y;