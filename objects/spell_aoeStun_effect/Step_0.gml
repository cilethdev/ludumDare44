/// @description 
scale = Approach(scale,1,0.8/10);
image_xscale = scale;
image_yscale = scale;

repeat(irandom_range(3,6)) {
	var ldx,ldy,dir;
	dir = irandom(360);
	ldx = x + lengthdir_x(scale*85,dir);
	ldy = y + lengthdir_y(scale*85,dir);
	var p = instance_create_depth(ldx,ldy,depth-10,spell_coinShieldPart);
		p.vy = -1;
		
}

if (scale == 1) {
	instance_destroy();
}