/// @description 
Singleton();
cam = view_get_camera(view_current);
camx = 0;
camy = 0;
camw = camera_get_view_width(cam);
camh = camera_get_view_height(cam);
camAngle = 0;
camZoom = 0;

shake = 0;
shakeMax = 16;

shakeAngle = 0;
shakeAngleMaX = 5;

shakeZoom = 0;
shakeZoomMax = 0.1;