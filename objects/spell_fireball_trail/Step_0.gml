/// @description 
if (life) {
	life--;
	scale = Approach(scale,0.5,0.5/lifeStart);
	image_xscale = scale;
	image_yscale = scale;
} else {
	instance_destroy();
}