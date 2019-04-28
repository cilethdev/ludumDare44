/// @description
if (!other.canPickup) { exit; };
if (controller.kInteract) {
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
}