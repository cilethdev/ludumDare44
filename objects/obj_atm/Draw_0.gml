/// @description 
draw_self();
if (!used) {
	if (showText) {
		draw_text(x,y-64,"PRESS '"+GetKeyString(InputManager.interact)+"' TO WITHDRAW");
	}
}