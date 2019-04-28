/// @description 
// HealthBar
if (instance_exists(Player)) {
	if (hp) {
		draw_set_colour(hbCol);
		draw_rectangle(x-16,y-sprite_height-8,x-16+(32*(hp/hpMax)),y-sprite_height-4,false);
	}
}