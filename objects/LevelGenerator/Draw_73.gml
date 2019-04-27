/// @description 
for(var i = 0; i < levelw; i++) {
	for(var j = 0; j < levelh; j++) {
		var val = level[# i,j];
		var c = c_white;
		if(val == 1) {
			c = c_black;
		} else 
		if (val == 2) {
			c = c_red;
		}
		draw_set_colour(c);
		draw_rectangle(Camera.camx+i*2,Camera.camy+j*2,Camera.camx+i*2+2,Camera.camy+j*2+2,-1);
	}
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
for(var i = 0; i < ds_list_size(roomList); i++) {
	var rm = roomList[| i];
	draw_text(Camera.camx+(rm[? "cx"]*2),Camera.camy+(rm[?"cy"]*2),string(rm[? "id"]));
}

for(var i = 0; i < ds_list_size(roomList); i++) {
	var rm1 = roomList[| i];
	var rm2 = rm1[? "path"];
	//for(var j = 0; j < ds_list_size(roomList); j++) {
	//	var cr = roomList[| j];
	//	if (cr[? "id"] == rm1[? "path"]) {
	//		rm2 = roomList[| j];
	//	}
	//}
	draw_line_width_colour(Camera.camx+rm1[? "cx"]*2,Camera.camy+rm1[? "cy"]*2,Camera.camx+rm2[? "cx"]*2,Camera.camy+rm2[? "cy"]*2,2,c_green,c_yellow);
}
