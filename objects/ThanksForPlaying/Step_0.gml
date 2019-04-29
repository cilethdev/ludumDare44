/// @description 
var displacement = (yoffT - yoff);
spd += (tension * displacement) - (dampening * spd);
yoff += spd;

if (textDelay) {
	textDelay--;
}
if (spd <= 1) {
	t = (t+inc) mod 360;
	t2 = (t2 + 0.3) mod 360;
	var xshift = amp*sin(degtorad(t));
	var yshift = amp*cos(degtorad(t2));

	x = lerp(x,xstart + xshift,0.25);
	y = lerp(y,ystart + yshift,0.1);
}