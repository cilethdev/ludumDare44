/// @desc HurtBoxCreate(owner,xscale,yscale,xoff,yoff)
/// @param owner
/// @param xscale
/// @param yscale
/// @param xoff
/// @param yoff

var hb = instance_create_depth(other.x,other.y,0,HurtBox);
	hb.owner = argument0;
	hb.image_xscale = argument1;
	hb.image_yscale = argument2;
	hb.xoff = argument3;
	hb.yoff = argument4;

return hb;