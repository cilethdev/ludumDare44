if (!exitCreated) {
	exitCreated = true;
	return rmTypes.exitLevel;
}

var chance = irandom_range(0,100);
if (specialRoomCount >= 2) {
	return rmTypes.enemy;
} else {
	if (chance < 30) {
		specialRoomCount++;
		return rmTypes.shop;
		return choose(rmTypes.shop,rmTypes.chest);
	}
	else {
		return rmTypes.enemy;
	}
}