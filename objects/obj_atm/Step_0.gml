/// @description 
if (!used) {
	if (collision_rectangle(x-48,y-48,x+48,y+48,Player,false,true)) {
		showText = true;
		if (InputManager.kInteract) {
			if (instance_exists(Player)) {
				CamShake(0.3,0,0.25);
				image_index = 1;
				used = true;
				with(Player) {
					var amt = floor(10 + (min(15,stats.stats[itemProps.atmBonus]/100) * 5));
					hp += amt;
					var hText = instance_create_layer(x,y-32,"Instances",DmgText);
						hText.col = c_lime;
						hText.text = "+"+string(amt);
						hText.owner = id;
				}
			}
		}
	} else {
		showText = false;
	}
} else {
	showText = false;
}