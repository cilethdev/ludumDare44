/// @description 
xscale = Approach(xscale,1,0.04);
yscale = Approach(yscale,1,0.04);

if (hp <= 0 && !dead) {
	sm_change(state,BossDead);
}

if (hitFlash) { hitFlash--; }

ApplyVelocity();