/// @description 
if(!locked) {
	if (place_meeting(x,y,Player)) {
		showText = true;
		if (InputManager.kInteract) {
			teleportT++;
			if (teleportT >= teleportTMax) {
				room_goto_next();
			}
		}
	} else {
		showText = false;
		teleportT = 0;
	}
}