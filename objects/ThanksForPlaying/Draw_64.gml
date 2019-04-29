/// @description 
draw_sprite(sprite_index,0,x,y-yoff);

if (!textDelay) {
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(c_white);
	draw_text(320,360-32,"PRESS 'ESC' TO GO BACK TO MENU");
	if (keyboard_check_pressed(vk_escape)) {
		room_goto(m_main);
	}
}