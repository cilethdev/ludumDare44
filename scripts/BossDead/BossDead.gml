if (sm_onEnter(state)) {
	if (!deathT) {
		deathT = 180;
		hitFlash = 180
		CamShake(1,0.8,1);
	}
}

if (deathT) {
	deathT--;
} 
if (deathT < 5) {
	room_goto(rm_thanks);
}
if (sm_onExit(state)) {
	
}