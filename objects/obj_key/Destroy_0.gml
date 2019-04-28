/// @description 
CamShake(0.6,0.5,0.4);

var _enemyList = ds_list_create();
for(var i = 0; i < 6; i++;) {
	var type = GetRandomEnemy();
	ds_list_add(_enemyList,instance_create_layer(x+lengthdir_x(96,i*(360/6)),y+lengthdir_y(96,i*(360/6)),"Instances",type));
}


// Create blockers
for(var i = 0; i < rm[? "w"]+1; i++) {
	for(var j = 0; j < rm[? "h"]+1; j++) {
		var xx,yy;
		xx = floor(rm[? "x"])*GRID;
		yy = floor(rm[? "y"])*GRID;
		if (position_meeting(xx+(i*GRID)-1,yy+(j*GRID),Solid) && !position_meeting(xx+(i*GRID)-1,yy+(j*GRID),Blocker)) {
			continue;
		}
		if (position_meeting(xx+(i*GRID)+GRID+1,yy+(j*GRID),Solid) && !position_meeting(xx+(i*GRID)+GRID+1,yy+(j*GRID),Blocker)) {
			continue;
		}
		if (position_meeting(xx+(i*GRID),yy+(j*GRID)-1,Solid) && !position_meeting(xx+(i*GRID),yy+(j*GRID)-1,Blocker)) {
			continue;
		}
		if (position_meeting(xx+(i*GRID),yy+(j*GRID)+GRID+1,Solid) && !position_meeting(xx+(i*GRID),yy+(j*GRID)+GRID+1,Blocker)) {
			continue;
		}
		if (i == 0 || i == rm[? "w"]) {
			
			var b = instance_create_layer(xx+(i*GRID),yy+(j*GRID),"Instances",Blocker);
				b.enemyList = _enemyList;
		}
		if (j == 0 || j == rm[? "h"]) {
			var b = instance_create_layer(xx+(i*GRID),yy+(j*GRID),"Instances",Blocker);
				b.enemyList = _enemyList;
		}
	}
}