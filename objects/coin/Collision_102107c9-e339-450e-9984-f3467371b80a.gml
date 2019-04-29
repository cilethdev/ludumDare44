/// @description 
instance_destroy();


var hText = instance_create_layer(other.x,other.y-32,"Instances",DmgText);
	hText.col = c_lime;
	hText.text = "+" + string(value);
	hText.owner = other.owner;

player.hp += value;

// SFX
PlaySound(snd_itemBuy,0.25,random_range(1,1.2),0);