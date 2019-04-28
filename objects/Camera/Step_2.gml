/// @description 
if (keyboard_check_pressed(ord("X"))) {
	
}

if (instance_exists(Player)) {
	var pdir = point_direction(Player.x,Player.y-16,mouse_x,mouse_y);
	var dis = max(0,min(64,point_distance(Player.x,Player.y-16,mouse_x,mouse_y)));
	if (dis < 64) { dis = 0; }
	
	var camxT = Player.x-(camw/2) + lengthdir_x(dis,pdir);
	var camyT = Player.y-16-(camh/2) + lengthdir_y(dis,pdir);
	camx = lerp(camx,camxT,0.05);
	camy = lerp(camy,camyT,0.05);
} else {
	if (!PauseManager.paused) {
		camx = 0;
		camy = 0;
	}
}

if(keyboard_check_pressed(ord("1"))) {
	instance_create_layer(mouse_x,mouse_y,"Instances",Dummy);
}

if (keyboard_check_pressed(ord("2"))) {
	shake = 0.5;
	shakeAngle = 0.5;
	shakeZoom = 0.5;
}

if (keyboard_check_pressed(ord("3"))) {
	instance_create_layer(mouse_x,mouse_y, "Instances", randomCollectible);
}

shake = Approach(shake,0,1/60);
camx += shake * shakeMax * random_range(-1,1);
camy += shake * shakeMax * random_range(-1,1);

shakeAngle = Approach(shakeAngle,0,1/45);
camAngle = shakeAngle * shakeAngleMaX * random_range(-1,1);

shakeZoom = Approach(shakeZoom,0,1/45);
camZoom = shakeZoom * shakeZoomMax;

camera_set_view_angle(cam,camAngle);
camera_set_view_size(cam,camw*(1-camZoom),camh*(1-camZoom));
camera_set_view_pos(cam,camx,camy);