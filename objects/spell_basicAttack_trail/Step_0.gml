/// @description 
if (life) {
	life--;
	scale = 0.5 + (0.5 * (life/lifeStart));
	image_yscale = scale;
} else {
	instance_destroy();
}