/// @description 
draw_self();
if (drawOpen) {
	draw_set_font(fnt_hud);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x,y-48+textOffset,"PRESS '" +string(GetKeyString(InputManager.interact))+"' TO OPEN");
}