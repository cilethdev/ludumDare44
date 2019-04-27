/// @description 
if (life) {
	life--;
} else {
	instance_destroy();
}

scale = Approach(scale,0.1,1/30);
image_xscale = scale;
image_yscale = scale;