// reuses the item props enum, to simplify my life.
var inventory = argument0;

var excludedProps = 6; // all excluded props should be at the end.;
var statPropLength = itemProps.length - excludedProps;
var bonus = [];

for(var i=0;i<statPropLength;i++){
	bonus[i] = 0;	
}

for(var itemId = ds_map_find_first(inventory); !is_undefined(itemId); itemId = ds_map_find_next(inventory,itemId)){
		var numItem = inventory[?itemId]; // the numberof this item there are.
		for(var i = 0;i < statPropLength; i++){
				bonus[i] += global.items[itemId,i] * numItem;
		}
}

return bonus;