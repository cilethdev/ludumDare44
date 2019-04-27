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


/*
if (showInv) {
	for(var i = 0; i < invSize; i++) {
		draw_sprite(spr_invSlot,0,invx + (i mod (invSize/2))*32, invy + (i div (invSize/2)*32));
		if (inv[i,invProps.item] != -1) {
			draw_sprite(global.items[inv[i,invProps.item],itemProps.sprite],0,invx + (i mod (invSize/2))*32, invy + (i div (invSize/2)*32));
		}
	}
	with(Player) {
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		var sx,sy;
		sx = 16;
		sy = 64;
		draw_text(sx,sy,"hpMax " + string(hpMax));
		draw_text(sx,sy+16,"armor " + string(armor));
		draw_text(sx,sy+32,"ms " + string(moveSpd));
		draw_text(sx,sy+48,"ad " + string(ad));
		draw_text(sx,sy+64,"ap " + string(ap));
		draw_text(sx,sy+80,"cdr " + string(cdr));
		draw_text(sx,sy+96,"ct " + string(ct));
	}
	
}
*/