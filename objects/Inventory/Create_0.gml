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


downScale = 2;
healthBarSize = 200;
maxInvWidth = (display_get_gui_width() - healthBarSize)* downScale;

topSpace = 200;


invx = healthBarSize;
invy = 20 - topSpace/downScale; //display_get_gui_height() - 72 - topSpace;


inventorySurface = surface_create(maxInvWidth, 500);