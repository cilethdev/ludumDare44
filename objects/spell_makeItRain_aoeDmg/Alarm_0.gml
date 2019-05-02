/// @description 
var splashList = ds_list_create();
var n = collision_circle_list(x,y,96,par_enemy,false,true,splashList,false);
if (n) {
	PlaySound(snd_fireBall_end,1,1,0);
}
for(var i = 0; i < ds_list_size(splashList); i ++) {
	with(splashList[|i]) {
		hp -= other.dmg;
		var dt = instance_create_layer(x,bbox_top,"Instances",DmgText);
			if (instance_exists(PlayerStats)) {
				PlayerStats.damageDealt += other.dmg;
			}
			dt.text = string(other.dmg);
			dt.owner = id;
			dt.col = make_colour_hsv(190,180,255);
	}
}
ds_list_destroy(splashList);
if (instance_exists(Boss)) {
	
	if (collision_circle(x,y,96,Boss,false,true)) {
		with(Boss) {
			hp -= other.dmg;
		var dt = instance_create_layer(x,bbox_top,"Instances",DmgText);
			if (instance_exists(PlayerStats)) {
				PlayerStats.damageDealt += other.dmg;
			}
			dt.text = string(other.dmg);
			dt.owner = id;
			dt.col = make_colour_hsv(190,180,255);
		}
	
	}
}

CamShake(0.2,0,0);
instance_destroy();