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
	ExecuteButtonFunction();
}