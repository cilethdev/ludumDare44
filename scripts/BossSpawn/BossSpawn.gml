if (sm_onEnter(state)) {
	startDelay = 90;
}
if (startDelay) {
	startDelay--;
} else {
	canHit = true;
	CamShake(0.5,0.25,0.5);
	sm_change(state,BossAttack1);
}

if (sm_onExit(state)) {
	
}