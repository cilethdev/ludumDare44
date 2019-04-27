/// @description
// drop a second coin with the same chance as the first
var drop = irandom(100);
if (drop <= 20) {
	// drop two coins
	instance_create_depth(x,y,depth,coin);
	instance_create_depth(x,y,depth,coin);
} else {
	instance_create_depth(x,y,depth,coin);
}
	
