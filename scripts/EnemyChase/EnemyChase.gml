if (sm_onEnter(state)) {
	pathCheckT = 1;
}

if (!instance_exists(Player)) {
	sm_change(state,EnemyIdle);
} else {
	image_blend = c_red;
	if (distance_to_object(Player) < attackRange && !collision_line(x,y,Player.x,Player.y-16,Solid,false,true)) {
		if (!attack) {
			attack = true;
		}
		path_end()
	
	}

	pathCheckT = (pathCheckT + 1) mod 60;
	if (pathCheckT == 1) {
	
			path_delete(movePath);
			movePath = path_add();
			mp_grid_path(MoveGrid.roomGrid,movePath,x,y,Player.x+random_range(-4,4),Player.y+random_range(-4,4),true);
			path_start(movePath,moveSpd,path_action_stop,false);
		
			if (distance_to_object(Player) > aggroRange && !attack) {
				sm_change(state,EnemyIdle);
			}
	}

	if (attack) {
		if (fireCD) {
			fireCD--;
		} else {
			fireCD = 90;
			var atk = choose(0,1);
			if (atk == 0) {
			var pdir = point_direction(x,y-16,Player.x,Player.y-16);
			var b = instance_create_depth(x,y,-10000,obj_orb);
				b.speed = 4;
				b.direction = pdir;
			} else
			if (atk == 1) {
				for(var i = 0; i < 16; i ++) {
				var b = instance_create_depth(x,y,-10000,obj_orb);
					b.speed = 3;
					b.direction = i*(360/16);
					var s = random_range(0.8,1.2);
					b.image_xscale = s;
					b.image_yscale = s;

				}
				attack = false;
			}
		}
	}
}

if (sm_onExit(state)) {
	path_end();
	fireCD = 90;
	image_blend = c_white;
}