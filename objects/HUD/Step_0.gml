/// @description 
if (instance_exists(Player)) {
	hbWidth = player.hp / playerStats.stats[attr.hp];
	hbWidth = clamp(hbWidth,0,1);

	hitDelay = Approach(hitDelay,0,1);

	if (!hitDelay) {
		if (abs(hbWidth-hbWidth_n) > 0.005) {
			hbWidth_n = lerp(hbWidth_n,hbWidth,0.1);
		} else {
			hbWidth_n = hbWidth;
		}
	}


	if (shake) {
		shake--;
		xoff = random_range(-3,3);
		yoff = random_range(-3,3);
	} else {
		xoff = 0;
		yoff = 0;
	}

	if (hbWidth >= 0.75) {
		hbColor = make_colour_hsv(75,180,200);
	}
	else if (hbWidth > 0.5) {
		hbColor = make_colour_hsv(55,180,200);
	}
	else if (hbWidth > 0.25) {
		hbColor = make_colour_hsv(30,200,200);
	} else {
		hbColor = make_colour_hsv(10,220,200);
	}
}