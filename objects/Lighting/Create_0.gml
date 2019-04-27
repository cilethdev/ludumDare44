/// @description 
Singleton();
buffer = 8;
lightSurf = surface_create(camera_get_view_width(Camera.cam)+buffer,camera_get_view_height(Camera.cam)+buffer);
darkCol = make_color_hsv(0,0,20);