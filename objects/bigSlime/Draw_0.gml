/// @description 
if (hitFlash) {
	shader_set(shdr_flash);
	draw_self();
	shader_reset();
} else {
	draw_self();
}