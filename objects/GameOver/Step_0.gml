/// @description 
var displacement = (yoffT - yoff);
spd += (tension * displacement) - (dampening * spd);
yoff += spd;

if (textDelay) {
	textDelay--;
} else {
	xpos = lerp(xpos,128,0.1);
	if (!showStats) {
		showStats = true;
		if (instance_exists(GameOverStats)) {
			GameOverStats.drawStatsT = 0;
		}
	}
}