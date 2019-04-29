/// @description Insert description here
// You can write your code in this editor
if (showMap) {
	draw_surface_part(mapSurf,Camera.camx div 32,Camera.camy div 32, (Camera.camw div 32) * 2, ((Camera.camh div 32)+1) * 2, 640-(Camera.camw div 32) * 4,8);
	draw_text(128,240,string(fps_real));
}