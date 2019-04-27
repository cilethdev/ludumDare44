var chance = irandom_range(0,100);
if (chance < 50) {
	return choose(rmTypes.gamble,rmTypes.shop,rmTypes.chest);
}
else {
	return rmTypes.enemy;
}