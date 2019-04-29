/// @description 
// HealthBar
if (hp) {
	draw_set_colour(hbCol);
	draw_rectangle(x-16,y-48,x-16+(32*(hp/hpMax)),y-44,false);
}