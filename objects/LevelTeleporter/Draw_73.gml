/// @description  
if (drawLockedText && image_speed = 0) {
	draw_text(x,y-80,"YOU NEED A KEY TO UNLOCK THIS");
}

if (showText) {
	if (!InputManager.kInteract) {
		draw_text(x,y-80,"HOLD '" + GetKeyString(InputManager.interact) + "' TO GO TO NEXT LEVEL");
	} else {
		if (teleportT > 0) {
			draw_rectangle(x-80,y-80,x-80+((teleportT/teleportTMax)*160),y-74,false);
		}
	}
}