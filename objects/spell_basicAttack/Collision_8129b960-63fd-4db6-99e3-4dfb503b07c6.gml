/// @description 
with(other) {
	hp -= other.dmg;
	var dt = instance_create_depth(x,bbox_top,-10000,DmgText);
		dt.text = string(other.dmg);
		dt.owner = id;
		dt.col = c_white;
		
		
	hitFlash = 8;
	hitStun = 40;
	sm_change(state, frozenAction);
}

instance_destroy();