/// @description 

// Inherit the parent event
event_inherited();

var mimicChance = irandom(100);

if (mimicChance) {
	isMimic = true;
} else {
	isMimic = false;
}
drawOpen = false;
open = false;
image_speed = 0;

t = 0;
inc = 3;
amp = 3;
textOffset = 0;

