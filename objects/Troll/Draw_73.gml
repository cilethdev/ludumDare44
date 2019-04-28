/// @description 
// HealthBar
if (hp) {
	draw_set_colour(hbCol);
	draw_rectangle(x-16,y-80,x-16+(32*(hp/hpMax)),y-78,false);
}