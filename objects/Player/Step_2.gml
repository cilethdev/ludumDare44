/// @description 
ApplyVelocity();

facing = mouse_x > x ? 1 : -1;

// sqaush n stretch
xscale = Approach(xscale,1,0.033);
yscale = Approach(yscale,1,0.033);

// Hitflash
if (hitFlash) { hitFlash--; }

depth = -y;