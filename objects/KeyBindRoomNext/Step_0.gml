/// @description 
if (wait) {
	wait--;
} else {
	if(keyboard_check_pressed(vk_anykey)) {
		room_goto_next();
	}
}