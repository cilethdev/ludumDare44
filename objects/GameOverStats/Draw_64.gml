/// @description 
if (drawStats) {
	draw_set_font(fnt_menu);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_colour(c_white);
	for(var i = 0; i < min(array_length_1d(stats),statN); i++) {
		
		var k = "";
		switch(i) {
			case 0:
				k = "ENEMIES KILLED: ";
				break;
			case 1:
				k = "COINS COLLECTED: ";
				break;
			case 2:
				k = "DAMAGE RECIEVED: ";
				break;
			case 3:
				k = "DAMAGE DEALT: ";
				break;
			case 4:
				k = "RUN TIME: ";
				break;
			case 5:
				k = "ITEMS COLLECTED: ";
				break;
			case 6:
				k = "SELF INFLICTED DAMAGE: ";
				break;
			case 7:
				k = "DASHES USED: ";
				break;
			case 8:
				k = "PROJECTILES SHOT: ";
				break;
		}
		draw_text(392,32+(i*32),k+string(stats[i]));
	}
}