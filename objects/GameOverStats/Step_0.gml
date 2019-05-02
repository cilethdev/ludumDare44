/// @description 
if (drawStatsT == 0) {
	drawStatsT = -1;
	drawStats = true;
}

if (drawStats) {
	displayStatsT = (displayStatsT + 1) mod 15;
	if (displayStatsT == 1) {
		statN ++;
	}
}