/// @description 
with(other) {
	hp -= other.dmg;
	var dt = instance_create_layer(x,bbox_top,"Instances",DmgText);
		dt.text = string(other.dmg);
		dt.owner = id;
		dt.col = c_white;
		
		
	hitFlash = 8;
	//hitStun = 120;
	//sm_change(state, frozenAction);
	
	//SFX
	switch(object_index) {
		case Slime:
		case BigSlime:
			var pitch = random_range(1,1.2);
			PlaySound(snd_slime_death,1,pitch,0);
			break;
		case Goblin:
			var pitch = random_range(2,2.2);
			PlaySound(snd_monsterGrunt4,1,pitch,0);
			break;
		case Dummy:
			var pitch = random_range(1,1.05);
			PlaySound(snd_monsterGrunt3,1,pitch,0);
			break;
	}
}

instance_destroy();