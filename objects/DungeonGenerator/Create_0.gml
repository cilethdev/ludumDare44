/// @description
enum rmBase {
	spawn,
	large,
	small
}
enum rmTypes {
	spawn,
	exitLevel,
	key,
	enemy,
	chest,
	shop,
	gamble
}
#macro GRID 32

showMap = false;
levelw = 200;
levelh = 200;
level = ds_grid_create(levelw,levelh);

room_width = levelw * GRID;
room_height = levelh * GRID;
roomCount = 10;
roomList = ds_list_create();

rmSpawn = ds_map_create();
rmSpawn[? "base"] = rmBase.spawn;
rmSpawn[? "type"] = rmTypes.spawn;
rmSpawn[? "x"] = 92;
rmSpawn[? "y"] = 92;
rmSpawn[? "w"] = 16;
rmSpawn[? "h"] = 16;
rmSpawn[? "cx"] = 100;
rmSpawn[? "cy"] = 100;
rmSpawn[? "connected"] = ds_list_create();

ds_list_add(roomList,rmSpawn);
ds_grid_set_region(level,rmSpawn[? "x"],rmSpawn[? "y"],rmSpawn[? "x"]+rmSpawn[? "w"],rmSpawn[? "y"]+rmSpawn[?"h"],1);

specialRoomCount = 0;
exitCreated = false;

// Add bigger rooms connected to spawn
var orientation = irandom(3); // 0: r u l; 1: u l d; 2: l d r; 3: d r u;
var lrgRms = 0;
var iterations = 10000;
while(ds_list_size(rmSpawn[? "connected"]) < 3 && iterations > 0) {
	var r = rmSpawn;
	
	// choose center point in direction
	var dir = ((lrgRms + orientation) * (90+irandom_range(-10,10))) mod 360;
	var dis = irandom_range(18,20);
	var cx,cy;
	cx = round(r[? "cx"] + lengthdir_x(dis,dir));
	cy = round(r[? "cy"] + lengthdir_y(dis,dir));
	
	var xx,yy,w,h;
	w = irandom_range(14,18);
	h = irandom_range(14,18);
	xx = floor(cx - w/2);
	yy = floor(cy - w/2);
	
	var collision = ds_grid_get_sum(level,xx-3,yy-3,xx+w+3,yy+h+3);
	if (collision > 0) {
		iterations--;
		continue;
	}
	
	var rm = ds_map_create();
		rm[? "base"] = rmBase.large;
		rm[? "type"] = GetLargeRoomType();
		rm[? "x"] = xx;
		rm[? "y"] = yy;
		rm[? "w"] = w;
		rm[? "h"] = h;
		rm[? "cx"] = cx;
		rm[? "cy"] = cy;
		rm[? "connected"] = ds_list_create();
	
	// Add room to connected rooms list
	ds_list_add(rmSpawn[? "connected"],rm);
	
	// Add room to main room list
	ds_list_add(roomList,rm);
	
	ds_grid_set_region(level,xx,yy,xx+w,yy+h,1);
	lrgRms++;
	
}

// add small rooms 
var lrgRmList = rmSpawn[? "connected"]
var numAttached = 3;
for(var i = 0; i < ds_list_size(lrgRmList); i++) {
	var r = lrgRmList[| i];
	var rms = 0;
	var iterations = 10000;
	while (ds_list_size(r[? "connected"]) < numAttached && iterations > 0) {
	
		// choose center point in direction
		var dir = irandom(360);
		var dis = irandom_range(14,18);
		var cx,cy;
		cx = round(r[? "cx"] + lengthdir_x(dis,dir));
		cy = round(r[? "cy"] + lengthdir_y(dis,dir));
	
		var xx,yy,w,h;
		w = irandom_range(8,10);
		h = irandom_range(8,10);
		xx = floor(cx - w/2);
		yy = floor(cy - w/2);
	
		var collision = ds_grid_get_sum(level,xx-3,yy-3,xx+w+3,yy+h+3);
		if (collision > 0) {
			iterations--;
			continue;
		}
	
		var rm = ds_map_create();
			rm[? "base"] = rmBase.small;
			rm[? "type"] = GetSmallRoomType();
			rm[? "x"] = xx;
			rm[? "y"] = yy;
			rm[? "w"] = w;
			rm[? "h"] = h;
			rm[? "cx"] = cx;
			rm[? "cy"] = cy;
			rm[? "connected"] = ds_list_create();
		
		// Add to connected rooms list
		ds_list_add(r[? "connected"],rm);
		
		// Add room to main room list
		ds_list_add(roomList,rm);
		
		ds_grid_set_region(level,xx,yy,xx+w,yy+h,1);
		rms++;
	}
	numAttached--;
}

// Connect paths from spawn to large rooms
var spawnConnections = rmSpawn[? "connected"];
for(var i = 0; i < ds_list_size(spawnConnections); i++) {
	var cRm = spawnConnections[| i];
	var mover;
	mover[0] = rmSpawn[? "cx"];
	mover[1] = rmSpawn[? "cy"];
	
	if (cRm[? "y"] + cRm[? "h"] < rmSpawn[? "cy"]) {
		mover[1] += 2;
	}
	
	while(mover[0] != cRm[? "cx"] || mover[1] != cRm[? "cy"]) {
		if (mover[0] != cRm[? "cx"]) {
			mover[0] += (mover[0] < cRm[? "cx"]) ? 1 : -1;
			ds_grid_set_region(level,mover[0],mover[1],mover[0]+1,mover[1]+1,1);
			continue;
		}
		if (mover[1] != cRm[? "cy"]) {
			mover[1] += (mover[1] < cRm[? "cy"]) ? 1 : -1;
			ds_grid_set_region(level,mover[0],mover[1],mover[0]+1,mover[1]+1,1);
			continue;
		}
		
	}
}

// Connect smaller rooms
var lrgRmList = rmSpawn[? "connected"];
for(var i = 0; i < ds_list_size(lrgRmList);i++) {
	var lrgRm = lrgRmList[| i];
	var smlRmList = lrgRm[? "connected"];
	for(var j = 0; j < ds_list_size(smlRmList); j++) {
		var cRm = smlRmList[| j];
		var mover;
		mover[0] = lrgRm[? "cx"];
		mover[1] = lrgRm[? "cy"];
	
		if (cRm[? "y"] + cRm[? "h"] < lrgRm[? "cy"]) {
			mover[1] += 2;
		}
	
		while(mover[0] != cRm[? "cx"] || mover[1] != cRm[? "cy"]) {
			if (mover[0] != cRm[? "cx"]) {
				mover[0] += (mover[0] < cRm[? "cx"]) ? 1 : -1;
				ds_grid_set_region(level,mover[0],mover[1],mover[0]+1,mover[1]+1,1);
				continue;
			}
			if (mover[1] != cRm[? "cy"]) {
				mover[1] += (mover[1] < cRm[? "cy"]) ? 1 : -1;
				ds_grid_set_region(level,mover[0],mover[1],mover[0]+1,mover[1]+1,1);
				continue;
			}
		
		}
	}
}

var tLayer = layer_get_id("tiles_floor");
var map = layer_tilemap_get_id(tLayer);

for(var i = 0; i < levelw; i++) {
	for(var j = 0; j < levelh; j++) {
		if (level[# i,j] == 1) {
			if (level[# i+1,j] == 0) {
				if (!position_meeting((i+1)*GRID,j*GRID,Solid)) {
					var sl = instance_create_depth((i+1)*GRID,j*GRID,0,Solid);
						sl.floorDir = fDir.left;
				}
			} 
			if (level[# i-1,j] == 0) {
				if (!position_meeting((i-1)*GRID,j*GRID,Solid)) {
					var sl = instance_create_depth((i-1)*GRID,j*GRID,0,Solid);
						sl.floorDir = fDir.right;
				}
			} 
			if (level[# i,j+1] == 0) {
				if (!position_meeting(i*GRID,(j+1)*GRID,Solid)) {
					var sl = instance_create_depth(i*GRID,(j+1)*GRID,0,Solid);
						sl.floorDir = fDir.up;
				}
			} 
			if (level[# i,j-1] == 0) {
				if (!position_meeting(i*GRID,(j-1)*GRID,Solid)) {
					var sl = instance_create_depth(i*GRID,(j-1)*GRID,0,Solid);
						sl.floorDir = fDir.down;
				}
			}
			
			var index = irandom(100) < 4 ? 8 : irandom_range(1,7);
			tilemap_set_at_pixel(map,index,i*GRID,j*GRID)

		}
	}
}

// find key room

// Get exit
var rmExit = -1;
for(var i = 0; i < ds_list_size(roomList); i++) {
	var cRm = roomList[| i];
	if (cRm[? "type"] == rmTypes.exitLevel) {
		rmExit = cRm;
		break;
	}
}
// Find furthest small room
var keyRm = -1;
var furthest = 0;
for(var i = 0; i < ds_list_size(roomList); i++) {
	var cRm = roomList[| i];
	if (cRm[? "base"] == rmBase.small && cRm != rmExit) {
		var dis = point_distance(rmExit[?"cx"],rmExit[?"cy"],cRm[?"cx"],cRm[?"cy"]);
		if (dis > furthest) {
			furthest = dis;
			keyRm = cRm;
		}
	}
}
keyRm[? "type"] = rmTypes.key;



// Rooms
for(var i = 0; i < ds_list_size(roomList); i++) {
	var cRm = roomList[| i];
	
	// Lights
	switch(cRm[? "base"]) {
		case rmBase.spawn:
			// center light
			var cl = instance_create_layer(cRm[? "cx"]*GRID,cRm[? "cy"]*GRID,"Lights",obj_light);
			cl.scale = 2.5;
			
			// corners
			instance_create_layer(cRm[? "x"]*GRID+GRID,cRm[? "y"]*GRID+GRID,"Lights",obj_light);
			instance_create_layer((cRm[? "x"]+cRm[? "w"])*GRID-GRID,cRm[? "y"]*GRID+GRID,"Lights",obj_light);
			instance_create_layer(cRm[? "x"]*GRID+GRID,(cRm[? "y"]+cRm[? "h"])*GRID-GRID,"Lights",obj_light);
			instance_create_layer((cRm[? "x"]+cRm[? "w"])*GRID-GRID,(cRm[? "y"]+cRm[? "h"])*GRID-GRID,"Lights",obj_light);
		break;
		case rmBase.large:
			// center light
			var cl = instance_create_layer(cRm[? "cx"]*GRID,cRm[? "cy"]*GRID,"Lights",obj_light);
			cl.scale = 2.5;
			
			// corners
			instance_create_layer(cRm[? "x"]*GRID+GRID,cRm[? "y"]*GRID+GRID,"Lights",obj_light);
			instance_create_layer((cRm[? "x"]+cRm[? "w"])*GRID-GRID,cRm[? "y"]*GRID+GRID,"Lights",obj_light);
			instance_create_layer(cRm[? "x"]*GRID+GRID,(cRm[? "y"]+cRm[? "h"])*GRID-GRID,"Lights",obj_light);
			instance_create_layer((cRm[? "x"]+cRm[? "w"])*GRID-GRID,(cRm[? "y"]+cRm[? "h"])*GRID-GRID,"Lights",obj_light);
		break;
		case rmBase.small:
			// center light
			if (cRm[? "type"] = rmTypes.exitLevel) {
				var cl = instance_create_layer(cRm[? "cx"]*GRID,cRm[? "cy"]*GRID,"Lights",obj_light);
				cl.col = 75;
				cl.scale = 2.5;
			} else {
				var cl = instance_create_layer(cRm[? "cx"]*GRID,cRm[? "cy"]*GRID,"Lights",obj_light);
			cl.scale = 2.5;
			}
		break;
	}
	
	switch(cRm[? "type"]) {
		case rmTypes.enemy:
			var numEnemies = irandom_range(3,5);
			if (cRm[? "base"] == rmBase.large) {
				numEnemies += 3;
			}

			
			repeat(numEnemies) {
				var randomEnemy = choose(Fire, Goblin, BigSlime, Slime, Dummy);
				instance_create_layer(
				(cRm[? "x"] + irandom(cRm[? "w"]-2)+1)*GRID,
				(cRm[? "y"] + irandom(cRm[? "h"]-2)+1)*GRID,
				"Instances",
				randomEnemy);
			}
			
			break;
		case rmTypes.exitLevel:
			show_debug_message("EXIT CREATED");
			instance_create_layer(cRm[? "cx"]*GRID,cRm[? "cy"]*GRID,"Instances",LevelTeleporter);
			break;
		case rmTypes.key:
			show_debug_message("KEY CREATED");
			var key = instance_create_layer(cRm[? "cx"]*GRID,cRm[? "cy"]*GRID,"Instances",obj_key);
				key.rm = cRm;
			break;
		case rmTypes.shop:
			instance_create_layer(cRm[? "cx"]*GRID,cRm[? "cy"]*GRID,"Instances",Item);
			break;
		case rmTypes.chest:
			instance_create_layer(cRm[? "cx"]*GRID,cRm[? "cy"]*GRID+32,"Instances",obj_chest);
			break;
	}
}



// Fog
instance_create_depth(0,0,0,FogController);
instance_create_depth(0,0,0,MoveGrid);
instance_create_layer(rmSpawn[? "cx"]*GRID,rmSpawn[? "cy"]*GRID,"Instances",Player);
Camera.camx = Player.x-Camera.camw/2;
Camera.camy = Player.y-Camera.camh/2;





mapSurf = surface_create(levelw,levelh);
surface_set_target(mapSurf);
for(var i = 0; i < levelw; i++) {
	for(var j = 0; j < levelh; j++) {
		switch(level[# i,j]) {
			case 0:
				draw_set_colour(c_black);
				break;
			case 1:
				draw_set_colour(c_white);
				break;
		}
		draw_rectangle(i,j,i+1,j+1,-1);
	}
}

surface_reset_target();
