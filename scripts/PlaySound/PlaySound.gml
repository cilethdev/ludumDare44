/// @param PlaySound(snd,volume,pitch,loop);
/// @arg snd
/// @arg volume
/// @arg pitch
/// @arg loop
var snd = argument0;
var vol = argument1;
var pit = argument2;
var loop = argument3;

audio_sound_pitch(snd,pit);
audio_sound_gain(snd,(global.masterV*global.sfxV*vol)*global.mute,0);
audio_play_sound(snd,0,loop);