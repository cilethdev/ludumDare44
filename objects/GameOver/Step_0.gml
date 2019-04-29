/// @description 
var displacement = (yoffT - yoff);
spd += (tension * displacement) - (dampening * spd);
yoff += spd;

if (textDelay) {
	textDelay--;
}