/// @description 
life = 60;
z = -2;
vz = -2;
xprev = 0;
yprev = 0;
zprev = 0;

lightCol = make_colour_hsv(24,255,255);
lightRadius = 64;

dmg = 6;

CamShake(0.25,0,0);


// SFX
PlaySound(snd_fireBall_start,1,1,0);
PlaySound(snd_fireBall_travel,1,1,0);