if (instance_exists(Player)) {
	Player.hpMax	= PlayerStats.stats[attr.hp];
	Player.armor	= PlayerStats.stats[attr.armor];
	Player.moveSpd	= PlayerStats.stats[attr.ms];
	Player.ad		= PlayerStats.stats[attr.ad];
	Player.ap		= PlayerStats.stats[attr.ap];
	Player.cdr		= PlayerStats.stats[attr.cdr];
	Player.ct		= PlayerStats.stats[attr.ct];
}