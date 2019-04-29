/// @description 
draw_set_alpha(a);
draw_set_color(c_black);
draw_rectangle(Camera.camx,Camera.camy,Camera.camx+Camera.camw,Camera.camy+Camera.camh,false);
draw_set_alpha(1);
draw_self();