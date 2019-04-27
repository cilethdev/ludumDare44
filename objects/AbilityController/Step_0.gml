/// @description 
for(var i = 0; i < 6; i ++) {
	// cool down
	if (ability[i,abilProp.cdT] > 0) {
		ability[i,abilProp.cdT]--;
	}
	if (ability[i,abilProp.cdT] == 0) {
		ability[i,abilProp.cdT] = -1;
		ability[i,abilProp.canUse] = true;
	}
}