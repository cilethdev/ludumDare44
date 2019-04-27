/// @description 
t = (t+12) mod 360;
var shift = 0.025 * sin(degtorad(t));
image_xscale = scale+shift;
image_yscale = scale+shift;