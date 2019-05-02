/// @description 
if (room == level_1 || room == level_2 || room == level_3 || room = level_boss) {
	var g = instance_create_depth(0,0,0,GameOverStats);
		g.stats = [
			enemiesKilled,
			coinsCollected,
			damageRecieved,
			damageDealt,
			runtime,
			itemsCollected,
			damageFromSpells,
			dashesUsed,
			projectilesShot
		];
}
	