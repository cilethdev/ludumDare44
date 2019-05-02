/// @description 

dmg = 0;
splash =  80;

instance_create_depth(x,y,depth-10,spell_aoeStun_effect);
var splashList = ds_list_create();
var n = collision_circle_list(x,y,96,par_enemy,false,true,splashList,false);
for(var i = 0; i < ds_list_size(splashList); i ++) {
	with(splashList[|i]) {
		hp -= other.dmg;
		hitStun = 60;
		hitFlash = 15;
		vx = 0;
		vy = 0;
		sm_change(state,frozenAction)
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

CamShake(0.6,0.25,0.5);

alarm[0] = 1;