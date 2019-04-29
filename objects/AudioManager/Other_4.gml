/// @description 
switch(room) {
	case level_1:
	case level_2:
	case level_3:
		PlaySound(snd_roomStart,1,1,0);
		if (global.currentTrack != music_fts) {
			audio_stop_sound(global.currentTrack);
			global.currentTrack = music_fts;
			PlayMusic(global.currentTrack,1);
		}
		break;
	case m_main:
	case m_settings:
	case m_controls:
		
		if (global.currentTrack != music_mdl) {
			audio_stop_all();
			global.currentTrack = music_mdl;
			PlayMusic(global.currentTrack,1);
		}
}