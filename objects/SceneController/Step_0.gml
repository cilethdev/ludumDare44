/// @description 
if (scenePos < array_height_2d(sceneIntro)) {
	if (sceneT > 0) {
		sceneT--;
		if (partPos == 1) {
			fade = Approach(fade,1,1/60);
		}
		if (partPos == 3) {
			fade = Approach(fade,0,1/60);
		}
	}
	if (sceneT == 0) {
		partPos++;
		if (partPos > 4) {
			partPos = 1;
			scenePos++;
			if (scenePos >= array_height_2d(sceneIntro)) {
				room_goto_next();
				if (!hasSeenIntro) {
					ini_open("settings.ini");
					ini_write_real("scene","hasSeenIntro",true);
					ini_close();
				}
				exit;
			}
			sceneT = sceneIntro[scenePos,partPos];
		} else {
			sceneT = sceneIntro[scenePos,partPos];
		}
	}
	
} else {
	if (!hasSeenIntro) {
		ini_open("settings.ini");
		ini_write_real("scene","hasSeenIntro",true);
		ini_close();
	}
}

if (hasSeenIntro && keyboard_check_pressed(vk_escape)) {
	room_goto_next();
}