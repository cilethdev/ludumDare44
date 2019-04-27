/// @description 
enum invProps {
	item,
	amount,
	modifierId
}
invSize = 8;
for(var i = 0; i < invSize; i ++) {
	inv[i,invProps.item]	= -1;
	inv[i,invProps.amount]	= 0;
	inv[i,invProps.modifierId] = -1;
}

showInv = false;
invx = display_get_gui_width()  - ((invSize / 2) * 32) - 8;
invy = display_get_gui_height() - 72;