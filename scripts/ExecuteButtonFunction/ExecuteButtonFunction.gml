switch(type) {
	case bType.goto:
		if (rm != -1) {
			room_goto(rm);
		}
		break;
	case bType.testRoom:
		room_goto(rm_test);
		break;
	case bType.exitGame:
		game_end();
		break;
	case bType.restoreDefaults:
		ResetKeybinds();
		if (room == m_controls) {
			room_restart();
		}
		break;
	case bType.resumeGame:
		with(PauseManager) {
			paused = false;
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
		break;
	case bType.endGame:
		with(PauseManager) {
			paused = false;
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
		room_goto(rm);
		break;
}