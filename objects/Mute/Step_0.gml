/// @description 

var displacement = (targetScale - scale);
spd += (tension * displacement) - (dampening * spd);
scale += spd;

xscale = scale;
yscale = scale;

if (hover) {
	targetScale = 1.1;
} else {
	targetScale = 1;
}
if (mouse_check_button_pressed(mb_left) && hover) {
	scale -= 0.2;
	if (value == 1) {
		value = 0;
	} else {
		value = 1;
	}
	image_index = value;
	UpdateAudioSettings();
}