/// @description 
image_angle = irandom(3)*90;
repeat(irandom_range(8,16)) {
	var p = instance_create_depth(x+random_range(-48,48),y+random_range(-48,48),depth-1000,spell_fireball_explosion_parts);
}
repeat(irandom_range(8,12)) {
	var p = instance_create_depth(x+random_range(-48,48),y+random_range(-48,48),depth+100,spell_fireball_trail);
	var s = random_range(2,3);
		p.life = irandom_range(60,90);
		p.scale = s;
		p.image_xscale = s;
		p.image_yscale = s;
}