/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < levelw; i++) {
	for(var j = 0; j < levelh; j++) {
		switch(level[# i,j]) {
			case 0:
				draw_set_colour(c_black);
			break;
			case rmTypes.enemy:
				draw_set_colour(c_red);
			break;
			case rmTypes.chest:
				draw_set_colour(c_yellow);
			break;
			case rmTypes.shop:
				draw_set_colour(c_green);
			break;
			default:
				draw_set_colour(c_white);
			break;
		}
		draw_rectangle(i*4,j*4,i*4+4,j*4+4,-1);
	}
}