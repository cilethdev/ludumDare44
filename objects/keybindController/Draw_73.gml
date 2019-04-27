/// @description 
if (state == EDIT) {
	draw_set_colour(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height,-1);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_sprite_ext(spr_editDialog,0,x,y,1,1,0,c_white,1);
	
	if (target != -1) {
		draw_set_font(fnt_menu);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_white);
		draw_text(x,y-32,"REBIND '" + string(target.controlText) + "'");
		draw_text(x,y,rebindKey);
	}
}