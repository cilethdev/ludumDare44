var effect = argument0;
var pos = -1;
for(var i = 0; i < attr.length; i++) {
	var mods = PlayerStats.modifiers[i];
	for(var j = 0; j < ds_list_size(mods); j++) {
		if (effect == mods[|j]) {
			ds_list_delete(PlayerStats.modifiers[i],j);
			break;
		}
	}
}

UpdateModifiers();