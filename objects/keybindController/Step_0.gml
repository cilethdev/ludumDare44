/// @description 
switch(state) {
	case NORMAL:
		if (wait) { wait--; }
	break;
	case EDIT:
		if (keyboard_check_pressed(vk_escape)) {
			state = NORMAL;
		}
		
		if (keyboard_check_pressed(vk_anykey)) {
			rebindKey = GetKeyString(keyboard_lastkey);
		}
		
		if (keyboard_check_released(vk_anykey)) {
			state = NORMAL;
			UpdateKeybind(target.key,keyboard_lastkey);
			target.inputText = GetKeyString(keyboard_lastkey);
			wait = 10;
			
			// SFX
			PlaySound(snd_menuRelease,1,1,0);
		}
		
		if (mouse_check_button(mb_left) || mouse_check_button(mb_right)) {
			rebindKey = GetKeyString(mouse_lastbutton);
		}
		if (mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right)) {
			state = NORMAL;
			UpdateKeybind(target.key,mouse_lastbutton);
			target.inputText = GetKeyString(mouse_lastbutton);
			wait = 10;
			
	
			// SFX
			PlaySound(snd_menuRelease,1,1,0);
		}
	break;
}