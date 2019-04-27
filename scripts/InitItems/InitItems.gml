createBaseCollectible(items.book, "Spellbook", "", spr_book);
global.items[items.book,itemProps.icon]		= spr_bookIcon;
global.items[items.book,itemProps.ap]		= 10;
global.items[items.book,itemProps.cdr]		= 0.2;
global.items[items.book,itemProps.ct]		= 0.1;

createBaseCollectible(items.sword,"Sword", "a sword", spr_book);
global.items[items.sword,itemProps.icon]	= spr_bookIcon;
global.items[items.sword,itemProps.hp]		= 10;
global.items[items.sword,itemProps.ms]		= 0.1;
global.items[items.sword,itemProps.ad]		= 3;


createBaseCollectible(items.crookedScale,"Crooked Scale", "The scale used by a successful and wily merchant.", spr_crookedScale);
global.items[items.crookedScale,itemProps.armor] = 1;

createBaseCollectible(items.silverSpoon, "Silver Spoon", "The spoon used to feed a royal carrot.  Or was it feeding carrots to a royal?", spr_book);
global.items[items.silverSpoon, itemProps.atmBonus] = 100;










// calculates the total rarity sum. this needs to stay after all item initiation.
global.itemRaritySum = 0;
for(var i = 0; i < items.length; i++){
		global.itemRaritySum += global.items[i,itemProps.rarity];
}