var player = argument0;
var inventory = argument1;  // this should be a ds_map
var itemId = argument2;
var itemChange = argument3; // can be 1 (add an item), -1 (remove an item), 0 (remove all items)

var itemCount = inventory[?itemId];
if( is_undefined(itemCount)){
	switch(itemChange){
		case -1:
		case 0:
			break; // don't need to do anything as there is already no item.
		case 1:
			inventory[?itemId] = 1;
	}
}
else { // the id is defined.
	switch(itemChange){
		case -1:
			if(itemCount > 1){
					inventory[?itemId] = itemCount - 1;
					break;
			}
		// else delete the item same as case 0
		case 0:
			ds_map_delete(inventory, itemId);
			break;
		case 1:
			inventory[?itemId] = itemCount + 1;
			break;
	}
}

// should instead have a function here or something that updates all the users stats.
//  CalculateBonusFromInventory( player.inv.inventory )

UpdateModifiers();