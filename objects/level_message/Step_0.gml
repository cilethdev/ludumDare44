/// @description 
var displacement = (targetScale - scale);
spd += (tension * displacement) - (dampening * spd);
scale += spd;

xscale = scale;
yscale = scale;


if (life) {
	life--;
} else {
	instance_destroy();
}