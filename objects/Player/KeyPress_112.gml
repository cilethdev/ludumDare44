/// @description 
// remove item from item effects
var itemIndex = -1;
for(var i = 0; i < array_height_2d(inv.inv); i++) {
	if(inv.inv[i,invProps.item] != -1) {
		itemIndex = i;
		break;
	}
}
if (itemIndex != -1) {
	var modifiersList = inv.inv[itemIndex,invProps.modifierId];
	for(var i = 0; i < ds_list_size(modifiersList); i++) {
		with(modifiersList[| i]) {
			instance_destroy();
		}
	}
	ds_list_destroy(modifiersList);
	
	// Drop item
	var drop = instance_create_depth(x,y,depth-10,Item);
		var t_item = inv.inv[itemIndex,invProps.item];
		drop.sprite_index = global.items[t_item,itemProps.sprite];
		drop.item = t_item;
		drop.amount = inv.inv[itemIndex,invProps.amount];
		
	inv.inv[itemIndex,invProps.item] = -1;
	inv.inv[itemIndex,invProps.amount] = 0;
	inv.inv[itemIndex,invProps.modifierId] = -1;
	
	UpdateModifiers();
		
}