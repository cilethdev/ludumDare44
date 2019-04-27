/// @description 
var lscale = 1+(0.5*(z/-16));
//draw_sprite_ext(spr_fireball_glow,0,x,y+z,lscale,lscale,0,c_white,0.5);
draw_sprite_ext(sprite_index,image_index,x,y+z,image_xscale,image_yscale,image_angle,image_blend,image_alpha);