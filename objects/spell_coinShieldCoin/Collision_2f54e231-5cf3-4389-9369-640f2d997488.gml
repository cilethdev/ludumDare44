/// @description 
if (canHit) {
	canHit = false;
	hitDelay = 15;
	other.hp -= dmg;
	var dt = instance_create_layer(x,bbox_top,"Instances",DmgText);
		dt.text = string(dmg);
		dt.owner = other.id;
		dt.col = make_colour_hsv(190,180,255);
}