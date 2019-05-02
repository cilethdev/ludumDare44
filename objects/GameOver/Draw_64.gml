/// @description 
draw_sprite(sprite_index,0,xpos,180-64-yoff);

if (!textDelay) {
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(c_white);
	draw_text(xpos,360-48,"PRESS 'R' TO RESTART\nPRESS 'ESC' TO EXIT");
	
	if (keyboard_check_pressed(ord("R"))) {
		room_goto(level_1);
	}
	if (keyboard_check_pressed(vk_escape)) {
		room_goto(m_main);
	}
}