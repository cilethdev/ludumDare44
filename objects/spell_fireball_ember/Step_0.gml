/// @description 
if (life) {
	life--;
	speed -= 0.001;
	direction += 1*spinDir;
} else {
	instance_destroy();
}