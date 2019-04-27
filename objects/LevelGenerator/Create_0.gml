/// @description
levelw = 100;
levelh = 100;
level = ds_grid_create(100,100);
ds_grid_add_region(level,0,0,levelw-1,levelh-1,0);

roomList = ds_list_create();
roomCount = 10;

rmSpawn = ds_map_create();
rmSpawn[? "id"] = 0;
rmSpawn[? "x"] = 36;
rmSpawn[? "y"] = 36;
rmSpawn[? "w"] = 24;
rmSpawn[? "h"] = 24;
rmSpawn[? "cx"] = 50;
rmSpawn[? "cy"] = 50;
rmSpawn[? "path"] = -1;

ds_list_add(roomList,rmSpawn);

ds_grid_set_region(level,rmSpawn[? "x"],rmSpawn[? "y"],rmSpawn[? "x"]+rmSpawn[? "w"],rmSpawn[? "y"]+rmSpawn[? "h"],1);

var rms = 1;
while (rms < roomCount) {
	var xx,yy,w,h;
	if (rms < 3) {
		xx = irandom_range(8,72);
		yy = irandom_range(8,72);
		w = irandom_range(20,24);
		h = irandom_range(20,24);
	} 
	else if (rms < 6) {
		xx = irandom_range(0,80);
		yy = irandom_range(0,80);
		w = irandom_range(14,20);
		h = irandom_range(14,20);
	}
	else {
		xx = irandom_range(0,80);
		yy = irandom_range(0,80);
		w = irandom_range(10,18);
		h = irandom_range(10,18);
	}
	var collision = ds_grid_get_sum(level,xx,yy,xx+w,yy+h);
	if (collision > 0) {
		show_debug_message(string(collision))
		continue;
	}
	
	var rm = ds_map_create();
	rm[? "id"] = rms;
	rm[? "x"] = xx;
	rm[? "y"] = yy;
	rm[? "w"] = w;
	rm[? "h"] = h;
	rm[? "cx"] = floor(xx+(w/2));
	rm[? "cy"] = floor(yy+(h/2));
	rm[? "path"] = 0;
	
	ds_list_add(roomList,rm);
	ds_grid_set_region(level,rm[? "x"],rm[? "y"],rm[? "x"]+rm[? "w"],rm[? "y"]+rm[? "h"],1);
	rms++;
}

for(var i = 0; i < ds_list_size(roomList); i++) {
	var cur = roomList[| i];
	ds_grid_set_region(level,cur[? "x"],cur[? "y"],cur[? "x"] + cur[? "w"], cur[? "y"] + cur[? "h"],2);
	ds_grid_set_region(level,cur[? "x"]+2,cur[? "y"]+2,cur[? "x"] + cur[? "w"]-2, cur[? "y"] + cur[? "h"]-2,1);
}


reached = ds_list_create();
unreached = ds_list_create();
for(var i = 0; i <ds_list_size(roomList); i++) {
	ds_list_add(unreached, roomList[| i]);
}

ds_list_add(reached, unreached[| 0]);
ds_list_delete(unreached,0);

while(ds_list_size(unreached) > 0) {
	var closestDis = 1000;
	var rIndex;
	var uIndex;
	
	for(var i = 0; i < ds_list_size(reached); i++) {
		for( var j = 0; j < ds_list_size(unreached); j++) {
			var rm1 = reached[| i];
			var rm2 = unreached[| j];
			var dis = point_distance(rm1[? "cx"],rm1[? "cy"],rm2[? "cx"],rm2[? "cy"]);
			if (dis < closestDis) {
				closestDis = dis;
				rIndex = i;
				uIndex = j;
			}
		}
	}
	
	var rm1 = reached[| rIndex];
	var rm2 = unreached[| uIndex];
	rm1[?"path"] = rm2;
	
	
	ds_list_add(reached, unreached[| uIndex]);
	ds_list_delete(unreached,uIndex);
}



for(var i = 0; i < levelw; i++) {
	for(var j = 0; j < levelh; j++) { 
		if(level[# i,j] == 0 || level[# i,j] == 2) {
			instance_create_depth(i*32,j*32,0,Solid);
		}
	}
}
instance_create_layer(rmSpawn[? "cx"]*32,rmSpawn[? "cy"]*32,"Instances",Player);







