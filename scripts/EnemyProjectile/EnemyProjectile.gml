var atk = argument0
if (!atk) {
	atk = 0;
}

if (atk == 0) {
var pdir = point_direction(x,y-16,Player.x,Player.y-16);
var b = instance_create_depth(x,y,depth-400,obj_orb);
	b.speed = 4;
	b.direction = pdir;
} else
if (atk == 1) {
	for(var i = 0; i < 16; i ++) {
	var b = instance_create_depth(x,y,depth-400,obj_orb);
		b.speed = 3;
		b.direction = i*(360/16);
		var s = random_range(0.8,1.2);
		b.image_xscale = s;
		b.image_yscale = s;
	}
}
sm_change(state, EnemyIdle);