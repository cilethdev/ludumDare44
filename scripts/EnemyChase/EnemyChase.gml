if (sm_onEnter(state)) {
	pathCheckT = 1;
}

if (!instance_exists(Player)) {
	sm_change(state,EnemyIdle);
} else {
	if (debug) image_blend = c_red;
	if (distance_to_object(Player) < attackRange && !collision_line(x,y,Player.x,Player.y-16,Solid,false,true)) {
		if (!attack) {
			attack = true;
			attackCDT = attackCD;
			sm_change(state, attackType)
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
		if (attackCDT) {
			attackCDT--;
		} else {
			attackCDT = attackCD;
			attack = false;
		}
	}
}

if (sm_onExit(state)) {
	path_end();
	attackCD = 90;
	image_blend = c_white;
}