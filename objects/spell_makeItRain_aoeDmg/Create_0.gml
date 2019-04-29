/// @description 
dmg = 2;
var splashList = ds_list_create();
collision_circle_list(x,y,96,par_enemy,false,true,splashList,false);
for(var i = 0; i < ds_list_size(splashList); i ++) {
	with(splashList[|i]) {
		hp -= other.dmg;
		var dt = instance_create_depth(x,bbox_top,-10000,DmgText);
			dt.text = string(other.dmg);
			dt.owner = id;
			dt.col = make_colour_hsv(190,180,255);
	}
}
ds_list_destroy(splashList);

CamShake(0.2,0,0);

alarm[0] = 1;