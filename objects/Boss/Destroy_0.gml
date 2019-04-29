/// @description 
repeat(100) {
	instance_create_depth(x+random_range(-64,64),y-random_range(-64,64),depth-32,coin);
}
