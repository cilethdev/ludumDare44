global.masterV	= masterVSlider.value;
global.musicV	= musicVSlider.value;
global.sfxV		= sfxVSlider.value;
global.mute		= muteCheckbox.value;


ini_open("settings.ini");
ini_write_real("audio","master",global.masterV);
ini_write_real("audio","music",global.musicV);
ini_write_real("audio","sfx",global.sfxV);
ini_write_real("audio","mute",global.mute);
ini_close();

audio_sound_gain(global.currentTrack,((global.musicV*global.masterV))*global.mute,0);