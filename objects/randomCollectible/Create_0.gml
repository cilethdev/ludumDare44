/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


// now we need to figure out how to choose a random item.

// random item id.

var lotteryNumber = irandom(global.itemRaritySum);
for(var i = 0; i < items.length; i++){ //
	lotteryNumber -= global.items[i,itemProps.rarity];
	if(lotteryNumber <= 0){
		item = i;
		break; // we found the item bois, lets hop out.
	}
	// not exactly sure how the fringe case on this works.
	// what happens if it gets to the very end.  ideally it should not be possible, but there might be an off by 1 error or something here.
}
sprite_index = global.items[item,itemProps.sprite];