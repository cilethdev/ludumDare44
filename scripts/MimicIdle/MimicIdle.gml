if (sm_onEnter(state)) {
	vx = 0;
	vy = 0;
}

checkDisT = (checkDisT + 1) mod 15;
if (checkDisT) {
	if (instance_exists(Player)) {
		if (distance_to_object(Player) < aggroRange && 
			!collision_line(x,y,Player.x,Player.y-16,Solid,false,true)) {
			// chase towards the player
			sm_change(state, MimicChase);
		}
	}
}