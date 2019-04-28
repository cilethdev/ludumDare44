repeat(irandom_range(15,20)) {
	instance_create_depth(x+random_range(-24,24),y-random_range(4,8),depth-32,coin);
}
repeat(irandom_range(15,20)) {
	instance_create_depth(x+random_range(4,8),y-random_range(-24,24),depth-32,coin);
}