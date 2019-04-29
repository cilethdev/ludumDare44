/// @description 
instance_create_depth(x,y,depth-10,spell_fireball_explosion);
var splashList = ds_list_create();
var n = collision_circle_list(x,y,64,par_enemy,false,true,splashList,false);
for(var i = 0; i < ds_list_size(splashList); i ++) {
	with(splashList[|i]) {
		hp -= other.dmg;
		var dt = instance_create_layer(x,bbox_top,"Instances",DmgText);
			dt.text = string(other.dmg);
			dt.owner = id;
			dt.col = make_colour_hsv(190,180,255);
	}
}
ds_list_destroy(splashList);

CamShake(0.6,0.25,0.5);

// SFX
PlaySound(snd_fireBall_end,1,1,0);
audio_stop_sound(snd_fireBall_travel);