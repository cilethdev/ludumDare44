/// @desc RoomCollision(roomList);
/// @arg roomList

var rList = argument0;
var rm = argument1;

for(var i = 0; i < ds_list_size(rList); i++) {
	var rmCur = ds_list_find_value(roomList,i);
	
	if (rm[rp.rmx] < rmCur[rp.rmx] + rmCur[rp.rmw] &&
		rm[rp.rmx] + rm[rp.rmw] > rmCur[rp.rmx] &&
		rm[rp.rmy] < rmCur[rp.rmy] + rmCur[rp.rmh] &&
		rm[rp.rmy] + rm[rp.rmh] > rmCur[rp.rmy] ) {
		show_debug_message("COLLISION");
		return true;
	}
}