/// @description 
if (canHit) {
	canHit = false;
	hitDelay = 15;
	other.hp -= dmg;
	var dt = instance_create_depth(x,bbox_top,-10000,DmgText);
		dt.text = string(dmg);
		dt.owner = other.id;
		dt.col = make_colour_hsv(190,180,255);
}