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

if(homing != 0){
	var nearestEnemy = instance_nearest(x + room_speed/4 * hspeed,y + room_speed/4 * vspeed,par_enemy);
	if(!is_undefined(nearestEnemy)){
		var oldSpeed = speed;
		var distance = distance_to_object(nearestEnemy)
		if(distance < 250){
			var dx = nearestEnemy.x - x;
			var dy = nearestEnemy.y - y;
			hspeed += (dx/distance) * homing;
			vspeed += (dy/distance) * homing;
			speed = oldSpeed;
			image_angle = direction;
		}
	}
}
