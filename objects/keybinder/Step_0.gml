/// @description 
event_inherited();

var displacement = (targetScale - scale);
spd += (tension * displacement) - (dampening * spd);
scale += spd;

image_xscale = scale;
image_yscale = scale;

if (hover) {
	targetScale = 1.1;
} else {
	targetScale = 1;
}

if (controller.state = controller.EDIT) { exit; }
if (!controller.wait && hover && mouse_check_button_released(mb_left)) {
	hover = false;
	controller.state = controller.EDIT;
	controller.target = id;
}

if (wait) {
	wait--;
}
