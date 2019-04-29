/// @description 
t = (t+inc) mod 360;
y = ystart + amp*sin(degtorad(t));

if (collision_rectangle(x-4,y-4,x+36,y+36,Player,false,true)) {
	showPrice = true;
} else {
	showPrice = false;
}
if (instance_exists(Player)) {
	if (showPrice && InputManager.kInteract) {
		if (Player.hp > price) {
			PlayerTakeDamage(price,"light");
			
			// 
			//var itm = instance_create_depth(x,y,depth,Item);
			//	itm.item = item;
			//	itm.sprite_index = sprite_index;
			editItemInventory(Player,Player.inv.inventory,item,1);
				
			with(owner) {
				for(var i = 0; i < ds_list_size(itemIds); i++) {
					with(itemIds[| i]) {
						instance_destroy();
					}
				}
			}
		}
		
		// SFX
		PlaySound(snd_itemBuy,1,1,0);
	} 	
}