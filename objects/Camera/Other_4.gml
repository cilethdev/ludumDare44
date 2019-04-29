/// @description 
cam = view_get_camera(view_current);
if (!instance_exists(Player)) {
	camx = 0;
	camy = 0;
	camw = camera_get_view_width(cam);
	camh = camera_get_view_height(cam);
}