//@description is used to define all default properties of a collectible.
var itemId = argument0;

global.items[itemId,itemProps.name]		= "Default";
global.items[itemId,itemProps.desc]		= "No Description yet.";
global.items[itemId,itemProps.sprite]	= spr_book;
global.items[itemId,itemProps.icon]		= spr_bookIcon;
global.items[itemId,itemProps.hp]		= 0;
global.items[itemId,itemProps.armor]	= 0;
global.items[itemId,itemProps.ms]		= 0;
global.items[itemId,itemProps.ad]		= 0;
global.items[itemId,itemProps.ap]		= 0;
global.items[itemId,itemProps.cdr]		= 0;
global.items[itemId,itemProps.ct]		= 0;
global.items[itemId,itemProps.atmBonus] = 0;
global.items[itemId,itemProps.homing]	= 0;
global.items[itemId,itemProps.rarity]	= 3; // this will definitly have to be tweaked im just making something up here.

// im thinking that there should maybe be a rarity stat.