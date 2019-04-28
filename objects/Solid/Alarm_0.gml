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
		image_index = sSpr.urSide;
	break;
	case fDir.right:
		image_index = sSpr.ulSide;
	break;
	case fDir.up:
		image_index = sSpr.utSide;
	break;
	case fDir.down:
		//if (l && r && !u && !d) {
		//	image_index = sSpr.wall;
		//}
		//// Corners
		//if (l && !r && u && !d) {
		//	image_index = sSpr.wall;
		//}
		//if (!l && r && u && !d) {
		//	image_index = sSpr.wall;
		//}
		image_index = sSpr.wall;
	break;
}
