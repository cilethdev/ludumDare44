/// @description 
sm_execute(state);

if( hp > maxHp){
	maxHp = hp;	
}

rT = (rT + rInc) mod 360;
var radiusOffset = rAmp*sin(degtorad(rT));
lightRadius_a = lightRadius + radiusOffset;

if (canHitT > 0) {
	canHitT--;
	hitFlashT = (hitFlashT + 1) mod 10;
	if (hitFlashT == 1) {
		hitFlash = 5;
	}
}
if (canHitT == 0) {
	canHitT = -1;
	canHit = true;
	hitFlashT = 0;
}

if (dashCD > 0) {
	dashCD--;
}
if (dashCD == 0) {
	canDash = true;
	dashCD = -1;
}