/// @description 
surface_set_target(inventorySurface);
draw_clear_alpha(c_white,0);
	// set surface to be the inventory plank.
	// we may need to erase the surface.
	var spacer = 1;
	var overlapOffset = 5;
	var fullWidth = 32;
	var cx = 0;
	var cy = topSpace;
	var dx = 0;
	
	
	for( var itemType = ds_map_find_first(inventory); !is_undefined(itemType);  itemType = ds_map_find_next(inventory, itemType)){
		
		
		var itemCount = inventory[?itemType];
		if(itemCount < 10){
			dx = fullWidth + (itemCount-1) * overlapOffset;
			if(cx + spacer + dx > maxInvWidth){
				cy += spacer + fullWidth;
				cx = 0;
			}
			
		
			for(var i = 0; i < itemCount; i++){
				draw_sprite(global.items[itemType,itemProps.sprite],0,cx+overlapOffset*i,cy-overlapOffset*i/2);
			}
			cx += spacer + dx;
		}
		else {
			var itemsToDraw = 3;
			var text = "x " + string(itemCount); 
			var textWidth = string_width(text);
			dx = fullWidth + ((itemsToDraw-1) * overlapOffset) + textWidth;
			if(cx + spacer + dx > maxInvWidth){
				cy += spacer + fullWidth;
				cx = 0;
			}
			
		
			for(var i = 0; i < itemsToDraw; i++){
				draw_sprite(global.items[itemType,itemProps.sprite],0,cx+overlapOffset*i,cy-overlapOffset*i/2);
			}
			draw_text(cx + dx - textWidth + 15,cy+15,text);
			cx += spacer + dx;
		}
	}

	
	
	
// reset the surface back to the original surface.
surface_reset_target();
draw_surface_ext(inventorySurface,invx,invy,1,1,1,c_white,0.5);

for(var i = 0; i < invSize; i++) {
	if (inv[i,invProps.item] != -1) {
		draw_sprite(global.items[inv[i,invProps.item],itemProps.sprite],0,0 + (i mod (invSize/2))*16, 0 + (i div (invSize/2)*32));
	}
}