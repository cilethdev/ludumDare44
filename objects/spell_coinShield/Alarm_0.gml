/// @description 

for(var i = 0; i < 3; i++) {
	var c = instance_create_depth(x,y,depth,spell_coinShieldCoin);
	c.offset = i*(360/3);
	c.dmg = dmg;
	ds_list_add(coins,c.id);
}

// SFX
PlaySound(snd_coinShield,1,1,0);