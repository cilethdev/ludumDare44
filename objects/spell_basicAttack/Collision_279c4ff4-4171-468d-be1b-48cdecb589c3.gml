/// @description 
with(other) {
	if (canHit) {
		hp -= other.dmg;
		var dt = instance_create_depth(x,bbox_top,-10000,DmgText);
			dt.text = string(other.dmg);
			dt.owner = id;
			dt.col = c_white;
	}
}

instance_destroy();