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
global.items[items.crookedScale,itemProps.rarity] = 2;
global.items[items.crookedScale,itemProps.value] = 35;

createBaseCollectible(items.silverSpoon, "Silver Spoon", "The spoon used to feed a royal carrot.  Or was it feeding carrots to a royal?", spr_silverSpoon);
global.items[items.silverSpoon, itemProps.atmBonus] = 100;
global.items[items.silverSpoon, itemProps.rarity] = 1;
global.items[items.silverSpoon, itemProps.value] = 100;

createBaseCollectible(items.skiMask, "Ski Mask", "Potentially not the best attire for going to the bank", spr_skiMask);
global.items[items.skiMask, itemProps.atmBonus] = 25;

createBaseCollectible(items.heelies, "Heelies", "Sneakers that give great speed and swag.", spr_heelies);
global.items[items.heelies, itemProps.ms] = 0.5;






// calculates the total rarity sum. this needs to stay after all item initiation.
global.itemRaritySum = 0;
for(var i = 0; i < items.length; i++){
		global.itemRaritySum += global.items[i,itemProps.rarity];
}