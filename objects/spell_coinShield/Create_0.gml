/// @description 
owner = -1;
life = room_speed*5;
offset = 0;
coins = ds_list_create();
rotation = irandom(360);
radius = 15;
for(var i = 0; i < 3; i++) {
	var c = instance_create_depth(x,y,depth,spell_coinShieldCoin);
	c.offset = i*(360/3);
	c.dmg = 2;
	ds_list_add(coins,c.id);
}

// SFX
PlaySound(snd_fireBall_start,1,1,0);