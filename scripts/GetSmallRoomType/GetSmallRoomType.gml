var chance = irandom_range(0,100);
if (specialRoomCount >= 2) {
	return rmTypes.enemy;
} else {
	if (chance < 50) {
		specialRoomCount++;
		show_debug_message("SHOP");
		return rmTypes.chest;
		return choose(rmTypes.gamble,rmTypes.shop,rmTypes.chest);
	}
	else {
		return rmTypes.enemy;
	}
}