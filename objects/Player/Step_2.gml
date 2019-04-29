/// @description 
ApplyVelocity();

facing = mouse_x > x ? 1 : -1;

// sqaush n stretch
xscale = Approach(xscale,1,0.033);
yscale = Approach(yscale,1,0.033);

// Hitflash
if (hitFlash) { hitFlash--; }

depth = -y;

if (hp <= 0 && !dead) {
	dead = true;
	destroyT = 60;
	CamShake(1,0.5,0.6);
}
if (dead) {
	destroyT--;
	hitFlash = 1;
	if (destroyT <= 0) {
		instance_destroy();
	}
}

// cap hp
if( hp > maxHp){
	hp = maxHp
}