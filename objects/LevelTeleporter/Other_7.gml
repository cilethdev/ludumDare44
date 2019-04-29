/// @description 
image_speed = 0;
image_index = sprite_get_number(sprite_index)-1;
if (locked) {
	locked = false;
	
	// SFX
	PlaySound(snd_teleporterActive,1,1,0);
}