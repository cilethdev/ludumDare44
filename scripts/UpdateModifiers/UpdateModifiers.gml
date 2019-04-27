for(var i = 0; i < attr.length; i ++) {
	var mods = PlayerStats.modifiers[i];
	var modifierValue = 0;
	for(var j = 0; j < ds_list_size(mods); j++) {
		var m = mods[|j];
		modifierValue += m.amount;
	}
	
	PlayerStats.stats[i] = PlayerStats.base[i,attrProp.val] + modifierValue;
}

UpdatePlayerStats();