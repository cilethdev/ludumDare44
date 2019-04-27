/// @description 
if (active) {
	active--;
} else {
	instance_destroy();
}

if (instance_exists(follow)) {
	if (follow != -1) {
		x = follow.x+xoff;
		y = follow.y+yoff;
	} else {
		instance_destroy();
	}
} else {
	instance_destroy();
}