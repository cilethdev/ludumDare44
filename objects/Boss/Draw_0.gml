if (hitFlash) {
	shader_set(shdr_flash);
	draw_sprite_ext(sprite_index,image_index,x,y+z,xscale*facing,yscale,image_angle,image_blend,image_alpha);
	shader_reset();
} else {
	draw_sprite_ext(sprite_index,image_index,x,y+z,xscale*facing,yscale,image_angle,image_blend,image_alpha);
}