/// @description
instance_create_depth(x + 6, y + 7,depth,Slime);
instance_create_depth(x - 5, y + 2,depth,Slime);
var drop = irandom(100);
if (drop <= 20) {
	// randomly create a third slime
	instance_create_depth(x - 6, y - 3,depth,Slime);
}
	
