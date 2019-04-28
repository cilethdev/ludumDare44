// @description
// shadow
draw_sprite_ext(spr_slimeShadow,0,x,y,1-(0.5*(z/-96)),1-(0.5*(z/-96)),0,c_white,0.25);
if (hitFlash) {
	shader_set(shdr_flash);
	draw_sprite_ext(sprite_index,image_index,x,y+z,xscale*facing,yscale,image_angle,image_blend,image_alpha);
	shader_reset();
} else {
	draw_sprite_ext(sprite_index,image_index,x,y+z,xscale*facing,yscale,image_angle,image_blend,image_alpha);
}