/// @description
enum rmTypes {
	spawn,
	locked,
	key,
	enemy,
	chest,
	shop,
	gamble
}
#macro GRID 32
levelw = 100;
levelh = 100;
level = ds_grid_create(levelw,levelh);
room_width = levelw * GRID;
room_height = levelh * GRID;
roomCount = 10;
roomList = ds_list_create();

rmSpawn = ds_map_create();
rmSpawn[? "id"] = 0;
rmSpawn[? "type"] = rmTypes.spawn;
rmSpawn[? "x"] = 40;
rmSpawn[? "y"] = 40;
rmSpawn[? "w"] = 20;
rmSpawn[? "h"] = 20;
rmSpawn[? "cx"] = 50;
rmSpawn[? "cy"] = 50;

ds_list_add(roomList,rmSpawn);
ds_grid_set_region(level,rmSpawn[? "x"],rmSpawn[? "y"],rmSpawn[? "x"]+rmSpawn[? "w"],rmSpawn[? "y"]+rmSpawn[?"h"],1);

var rooms = 1;
iterations = 10000;
while(rooms < roomCount && iterations > 0) {
	var xx,yy,w,h,type;
	if (rooms < 4) {
		xx = irandom_range(8,72);
		yy = irandom_range(8,72);
		h = irandom_range(20,24);
		w = irandom_range(20,24);
		type = GetLargeRoomType();
	}
	else if (rooms < 7) {
		xx = irandom_range(0,80);
		yy = irandom_range(0,80);
		w = irandom_range(14,20);
		h = irandom_range(14,20);
		type = GetMediumRoomType();
	}
	else {
		xx = irandom_range(0,80);
		yy = irandom_range(0,80);
		w = irandom_range(10,18);
		h = irandom_range(10,18);
		type = GetSmallRoomType();
	}
	
	var collision = ds_grid_get_sum(level,xx,yy,xx+w,yy+h);
	if (collision > 0) {
		iterations--;
		continue;
	}
	
	var rm = ds_map_create();
	rm[? "id"] = rooms;
	rm[? "type"] = type;
	rm[? "x"] = xx;
	rm[? "y"] = yy;
	rm[? "w"] = w;
	rm[? "h"] = h;
	rm[? "cx"] = floor(xx+(w/2));
	rm[? "cy"] = floor(yy+(w/2));
	
	ds_list_add(roomList,rm);
	ds_grid_set_region(level, rm[? "x"],rm[? "y"],rm[? "x"]+rm[? "w"],rm[? "y"]+rm[? "h"],type);
	
	rooms++;
}