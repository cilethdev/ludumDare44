/// @description 

var displacement = (targetScale - scale);
spd += (tension * displacement) - (dampening * spd);
scale += spd;

xscale = scale;
yscale = scale;

if (mouse_check_button(mb_left) && point_in_rectangle(mouse_x,mouse_y,bbox_left-4,bbox_top-4,bbox_right+4,bbox_bottom+4)) {
	value = clamp((mouse_x - x) / sprite_width, 0, 1);
}

if (valPrev != value) {
	UpdateAudioSettings();
}

valPrev = value;