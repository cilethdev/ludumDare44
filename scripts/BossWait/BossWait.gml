if (sm_onEnter(state)) {
	waitT = 120;
}
if (waitT) {
	waitT--;
} else {
	canHit = true;
	CamShake(0.5,0.25,0.5);
	
	var nextAttack;
	if (hp > 250) {
		nextAttack = choose(BossAttack1,BossAttackDash)
	} else {
		nextAttack = choose(BossAttack1,BossAttackDash,BossAttack3)
	}
		
	sm_change(state,nextAttack);
}

if (sm_onExit(state)) {
	
}