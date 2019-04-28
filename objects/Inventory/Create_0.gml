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

inventory = ds_map_create();

showInv = false;
maxInvWidth = 500;

topSpace = 200;

invx = display_get_gui_width()  - maxInvWidth;
invy = display_get_gui_height() - 72 - topSpace;




// TODO decide on the width of the inventory surface.
inventorySurface = surface_create(maxInvWidth, 500);