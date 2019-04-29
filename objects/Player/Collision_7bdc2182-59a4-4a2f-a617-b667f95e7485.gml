/// @description
if (!other.canPickup) { exit; };
if (controller.kInteract) {
	editItemInventory(self,inv.inventory,other.item,1);
	with(other) {
		instance_destroy();
	}
	
	maxHp = stats.stats[itemProps.hp];
	
	// SFX
	PlaySound(snd_itemPickup,1,1,0);
	
	/*
	// below here is old code that will be deleted.
	var openIndex = -1;
	for(var i = 0; i < array_height_2d(inv.inv); i++) {
		if (inv.inv[i,invProps.item] == -1) {
			openIndex = i;
			break;
		}
	}
	if (openIndex != -1) {
		inv.inv[openIndex,invProps.item] = other.item;
		inv.inv[openIndex,invProps.modifierId] = PickupItem(other.item);
		with(other) {
			instance_destroy();
		}
	}
	*/
}