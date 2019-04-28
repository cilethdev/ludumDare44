/// @description 
//if (place_meeting(x,y,Solid)) {
//	instance_destroy();
//	alarm[0] = 1;
//	exit;
//}
var l,r,u,d;
l = place_meeting(x-1,y,Solid);
r = place_meeting(x+1,y,Solid);
u = place_meeting(x,y-1,Solid);
d = place_meeting(x,y+1,Solid);

switch(floorDir) {
	case fDir.left:
		if (u || d) {
			image_index = sSpr.ulSide;
		}
		if (!l && r && u && !d) {
			image_index = sSpr.wall;
		}
		if (!l && r && !u && d) {
			image_index = sSpr.utlCorner;
		}
	break;
	case fDir.right:
		if (u || d) {
			image_index = sSpr.urSide;
		}
		if (l && !r && u && !d) {
			image_index = sSpr.wall;
		}
		if (l && !r && !u && d) {
			image_index = sSpr.utrCorner;
		}
	break;
	case fDir.up:
		// top side cases
		if (l || r) {
			image_index = sSpr.utSide;
		}
		// Top corners
		if (l && !r && !u && d) {
			image_index = sSpr.utrCorner;
		}
		if (!l && r && !u && d) {
			image_index = sSpr.utlCorner;
		}
	break;
	case fDir.down:
		image_index = sSpr.wall;
	break;
}
