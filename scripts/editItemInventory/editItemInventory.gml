
var inventory = argument0;  // this should be a ds_map
var itemId = argument1;
var itemChange = argument2; // can be 1 (add an item), -1 (remove an item), 0 (remove all items)

var itemCount = inventory[?itemId];
if( is_undefined(itemCount)){
	switch(itemChange){
		case -1:
		case 0:
			return; // don't need to do anything as there is already no item.
		case 1:
			inventory[?itemId] = 1;
	}
}
else { // the id is defined.
	switch(itemChange){
		case -1:
			if(itemCount > 1){
					inventory[?itemId] = itemCount - 1;
					return;
			}
		// else delete the item same as case 0
		case 0:
			ds_map_delete(inventory, itemId);
			return;
		case 1:
			inventory[?itemId] = itemCount + 1;
			return;
	}
}

