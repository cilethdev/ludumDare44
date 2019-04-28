/// @description 

y += vy;
x += vx;

scale = Approach(scale,0.1,0.9/20);
image_xscale = scale;
image_yscale = scale;
if (life) {
	life--;
} else {
	instance_destroy();
}