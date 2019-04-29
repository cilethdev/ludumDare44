/// @description 
if (open) {
	exit;
}
if (collision_rectangle(x-48,y-32,x+48,y+48,Player,false,true)){
	drawOpen = true;
	t = (t+inc) mod 360;
	textOffset = amp*sin(degtorad(t));
	
	if (InputManager.kInteract && !open) {
		if (isMimic) {
			instance_create_depth(x, y, depth, ChestMimic);
			instance_destroy();
		} else {
			open = true;
			drawOpen = false;
			image_index = 1;
			repeat(irandom_range(6,12)) {
				instance_create_depth(x+random_range(-24,24),y-random_range(4,8),depth-32,coin);
			}
			
			// Loot
			repeat(maxLoot){
				if(random(1) <= lootDropRate){
					instance_create_depth(x,y,depth,randomCollectible);
				}
			}
			
			// SFX
			PlaySound(snd_itemChestOpen,1,1,0);
		}
	}
} else {
	drawOpen = false;
}
