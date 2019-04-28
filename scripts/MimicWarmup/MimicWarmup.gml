if (warmup) {
	canHitPlayer = false;
	warmup--;
} else {
	canHitPlayer = true;
	sm_change(state, MimicAttack);
}