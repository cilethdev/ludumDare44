/// @description 

if(player.hp < player.maxHp){
	instance_destroy();

	var hText = instance_create_layer(other.x,other.y-32,"Instances",DmgText);
		hText.col = c_lime;
		hText.text = "+" + string(value);
		hText.owner = other.owner;

	player.hp += value;

	// SFX
	PlaySound(snd_itemBuy,0.25,random_range(1,1.2),0);
}
else {
	mvx = 0;
	mvy = 0;
	if(vz == 0){
		vz = -3;
		vx = random_range(-2,2);
		vy = random_range(-2,3);	
	}

}