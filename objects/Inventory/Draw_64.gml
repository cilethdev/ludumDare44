/// @description 
surface_set_target(inventorySurface);
	draw_clear_alpha(c_white,0);
// set surface to be the inventory plank.
// we may need to erase the surface.
	for(var i = 0; i < invSize; i++) {
	if (inv[i,invProps.item] != -1) {
		draw_sprite(global.items[inv[i,invProps.item],itemProps.sprite],0,0 + (i mod (invSize/2))*16, 0 + (i div (invSize/2)*32));
	}
}	 
	
	
	
// reset the surface back to the original surface.
surface_reset_target();
draw_surface_ext(inventorySurface,invx,invy,1,1,1,c_white,0.5);