/// @description 
if (locked) {
	if (place_meeting(x,y,Player)) {
		drawLockedText = true;
	} else {
		drawLockedText = false;
	}
}


if(!locked) {
	drawLockedText = false;
	if (place_meeting(x,y,Player)) {
		showText = true;
		if (InputManager.kInteract) {
			teleportT++;
			if (teleportT >= teleportTMax) {
				room_goto_next();
			}
		} else {
			teleportT = 0;
		}
	} else {
		showText = false;
		teleportT = 0;
	}
}