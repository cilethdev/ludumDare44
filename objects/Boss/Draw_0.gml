// @description
// shadow
if (hitFlash) {
	shader_set(shdr_flash);
	draw_sprite_ext(sprite_index,image_index,x,y+z,xscale*facing,yscale,image_angle,image_blend,image_alpha);
	shader_reset();
	hitFlash = 0;
} else if (shake > 0) {
	var shakeAmount = 15 / ( 40 / shake);
	draw_sprite_ext( sprite_index, image_index, x + irandom_range(-shakeAmount, shakeAmount), y + irandom_range(-shakeAmount, shakeAmount), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
} else {
	draw_sprite_ext(spr_bossShadow,0,x,y,1-(0.2*(z/-96)),1-(0.2*(z/-96)),0,c_white,0.25);
	draw_sprite_ext(sprite_index,image_index,x,y+z,xscale*facing,yscale,image_angle,image_blend,image_alpha);
}