/// @description 
partT = (partT + 1) mod 5;
if (partT == 1) {
	instance_create_depth(x+random_range(-8,8),y+random_range(-8,8)+z,depth-10,spell_coinShieldPart);
}

vz = Approach(vz,10,grav);
if (z < 0) {
	z += vz;
} else {
	instance_destroy();
}