/// @description 
lifeStart = irandom_range(15,20);
life = lifeStart;
image_blend = choose(
	make_color_rgb(50,40,40),
	make_color_rgb(72,70,70),
	make_color_rgb(85,80,80),
);
scale = random_range(1.25,1);
image_xscale = scale;
image_yscale = scale;
image_angle = random(360);