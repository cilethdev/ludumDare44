/// @description 
if (life) {
	life--;
	var trail = instance_create_depth(x,y,depth+100,spell_basicAttack_trail);
	trail.image_angle = direction;
	instance_create_depth(x+random_range(-6,6),y+random_range(-6,6),depth-1,spell_fireball_ember);
} else {
	instance_destroy();
}
depth = -y-100;