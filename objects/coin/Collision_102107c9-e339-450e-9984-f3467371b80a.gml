/// @description 
instance_destroy();

with(other.owner) {
	hp++;
}

var hText = instance_create_layer(other.x,other.y-32,"Instances",DmgText);
	hText.col = c_lime;
	hText.text = "+1";
	hText.owner = other.owner;

// SFX
PlaySound(snd_itemBuy,0.25,random_range(1,1.2),0);