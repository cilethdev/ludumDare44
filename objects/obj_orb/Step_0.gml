/// @description 
partT = (partT + 1) mod 3;
if (partT == 0) {
	instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth+1,obj_orbPart);
}