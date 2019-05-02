/// @description 
if (!instance_exists(Player)) {
	exit;
}
if (!startDelay) {
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(320,16,"DELILAH");

	draw_set_colour(c_red);
	draw_rectangle(320-80,32,320-80+(160*(hp/hpMax)),38,0);
}