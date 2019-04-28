if (timeTillMove) {
	timeTillMove--;
} else {
	sm_change(state, ChestMimicAttack);
}
