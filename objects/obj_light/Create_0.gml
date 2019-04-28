/// @description 

switch(room) {
	case level_1:
		c = choose(15,25,32);
		col = make_color_hsv(c,200-c,255);
	break;
	case level_2:
		c = choose(60,65,70);
		col = make_color_hsv(c,245,255);
	break;
	case level_3:
		c = choose(160,190,220);
		col = make_color_hsv(c,225,255);
	break;
	default:
		c = choose(160,190,220);
		col = make_color_hsv(c,225,255);
		break;
}

image_blend = col;
radius = 128;
t = 0;
scale = 2;