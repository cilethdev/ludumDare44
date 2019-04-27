/// @description 
life = irandom_range(20,25);
image_blend = choose(
	make_color_rgb(255,242,0),
	make_color_rgb(255,200,00),
	make_color_rgb(255,180,00)
);
image_blend = make_colour_hsv(125,100,255);
scale = random_range(3,1);
image_xscale = scale;
image_yscale = scale;
image_angle = random(360);

speed = 1;
direction = random(360);
spinDir = choose(-1,1);