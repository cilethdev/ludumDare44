//@description takes the 3 required parameters of all items to make this process faster.
var itemId = argument0;
var name = argument1;
var description = argument2;
var sprite = argument3;
createEmptyCollectible(itemId);
global.items[itemId,itemProps.name] = name;
global.items[itemId,itemProps.desc] = description;
global.items[itemId,itemProps.sprite] = sprite;