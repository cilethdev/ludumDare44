/// @description 
draw_set_alpha(fadeA);
draw_set_colour(c_black);
draw_rectangle(Camera.camx,Camera.camy,Camera.camx+Camera.camw,Camera.camy+Camera.camh,0);
draw_set_alpha(1);
draw_self();