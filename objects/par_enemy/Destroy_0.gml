/// @description drop chances and things

repeat(maxMoney){
	if(random(1) <= moneyDropRate){
		instance_create_depth(x,y,depth,coin);
	}
}

repeat(maxLoot){
	if(random(1) <= lootDropRate){
		instance_create_depth(x,y,depth,randomCollectible);
	}
}

PlayerStats.enemiesKilled ++;