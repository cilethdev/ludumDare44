ini_open("settings.ini");
global.masterV	= ini_read_real("audio","master",1);
global.sfxV		= ini_read_real("audio","sfx",1);
global.musicV	= ini_read_real("audio","music",1);
global.mute		= ini_read_real("audio","mute",1);
ini_close();

global.currentTrack = music_mdl;

PlayMusic(global.currentTrack,1);