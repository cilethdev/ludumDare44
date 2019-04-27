/// @desc PickupItem(item);
var item = argument0;
var modifierIds = ds_list_create();
if (global.items[item,itemProps.hp] > 0) {
	ds_list_add(modifierIds,AddEffectModifier(Player,attr.hp,global.items[item,itemProps.hp],-1));
	Player.hp += global.items[item,itemProps.hp];
}
if (global.items[item,itemProps.armor] > 0) {
	ds_list_add(modifierIds,AddEffectModifier(Player,attr.armor,global.items[item,itemProps.armor],-1));
}
if (global.items[item,itemProps.ms] > 0) {
	ds_list_add(modifierIds,AddEffectModifier(Player,attr.ms,global.items[item,itemProps.ms],-1));
}
if (global.items[item,itemProps.ad] > 0) {
	ds_list_add(modifierIds,AddEffectModifier(Player,attr.ad,global.items[item,itemProps.ad],-1));
}
if (global.items[item,itemProps.ap] > 0) {
	ds_list_add(modifierIds,AddEffectModifier(Player,attr.ap,global.items[item,itemProps.ap],-1));
}
if (global.items[item,itemProps.cdr] > 0) {
	ds_list_add(modifierIds,AddEffectModifier(Player,attr.cdr,global.items[item,itemProps.cdr],-1));
}
if (global.items[item,itemProps.ct] > 0) {
	ds_list_add(modifierIds,AddEffectModifier(Player,attr.ct,global.items[item,itemProps.ct],-1));
}

UpdateModifiers();
return modifierIds;