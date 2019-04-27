/// @description 
draw_self();
if(drawPickup) {
	draw_set_font(fnt_hud);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(c_white);
	draw_text(x+16,y-48,"Pickup " + global.items[item,itemProps.name] + " '" + GetKeyString(InputManager.interact)+ "'");
}