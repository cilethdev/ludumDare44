var numProps = itemProps.length - 6;
var localPlayer = Player;
var localStats = PlayerStats;
if(is_undefined(localPlayer)){
	for(var i = 0; i < numProps; i ++) {
		localStats.stats[i] = localStats.base[i];
	}
}
else {
	var bonus = CalculateBonusFromInventory(localPlayer.inv.inventory);
	for(var i = 0; i < numProps; i ++) {
		localStats.stats[i] = localStats.base[i] + bonus[i];
	}
}

UpdatePlayerStats();