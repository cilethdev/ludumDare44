/// @description 
if (room != rm_test) {
	exit;
}

if (keyboard_check_pressed(vk_escape)) {
	paused = !paused;
	pauseSprite = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0); 
}

if (paused) {
	with(all) {
		if (persistent == false) {
			instance_deactivate_object(id);
		}
	}
	var posx,posy;
	posx = Camera.camx + Camera.camw/2;
	posy = Camera.camy + Camera.camh/2;
	resumeButton = instance_create_depth(posx,posy-24,-100000,Button);
	resumeButton.type = bType.resumeGame;
	resumeButton.text = "RESUME";
	exitButton = instance_create_depth(posx,posy+24,-100000,Button);
	exitButton.type = bType.endGame;
	exitButton.rm = m_main;
	exitButton.text = "EXIT GAME";
	
	with(Lighting) {
		visible = false;
	}
	
} else {
	if (sprite_exists(pauseSprite)) {
		sprite_delete(pauseSprite);
	}
	with(resumeButton) {
		instance_destroy();
	}
	with(exitButton) {
		instance_destroy();
	}
	
	with(Lighting) {
		visible = true;
	}
	
	instance_activate_all();
	
}