/// @desc PlayMusic(track,vol);
/// @arg track
/// @arg vol
var track,vol;
track = argument0;
vol = argument1;

audio_sound_gain(track,((global.musicV*global.masterV)*vol)*global.mute,0);
audio_play_sound(track,0,true);