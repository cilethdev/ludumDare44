if (sm_onEnter(state)) {
	//spellCastT = 90 - (90 * ct);
	//spellCastTMax = 90 - (90 * ct);
	spellCastT = abilities.spell[currentSpell,spellProps.ct] - (abilities.spell[currentSpell,spellProps.ct] * ct);
	spellCastTMax = abilities.spell[currentSpell,spellProps.ct] - (abilities.spell[currentSpell,spellProps.ct] * ct);
	moveWhileCast = abilities.spell[currentSpell,spellProps.canMove];
	lightCol = make_colour_hsv(32,125,255);	
	lightRadius = 128;

	sprite_index = spr_heroIdle;
}

spd = Approach(spd,0,fric);
vx  = lengthdir_x(spd,moveDir);
vy	= lengthdir_y(spd,moveDir);
if (spellCastT > 0) {
	spellCastT--;
} else {
	//targetDir = point_direction(x,y-16,mouse_x,mouse_y);
	//var fb = instance_create_depth(x,y-16,depth-1,spell_fireball);
	//	fb.direction = targetDir;
	//	fb.speed = 8;
	//	fb.image_angle = targetDir;
	//	fb.dmg = round(5 + (ap * 0.75));
	script_execute(abilities.spell[abilities.ability[currentAbility,abilProp.spell],spellProps.scr])
		
	
	abilities.ability[currentAbility,abilProp.canUse] = false;
	abilities.ability[currentAbility,abilProp.cdT] = abilities.ability[currentAbility,abilProp.cd] - (abilities.ability[currentAbility,abilProp.cd] * cdr);
	sm_change(state,PlayerNormal);
}

if (moveWhileCast) {
	GetMoveDir();
	if (controller.kLeft || controller.kRight || controller.kUp || controller.kDown) {
		spd = Approach(spd,moveSpd,acc);
	} else {
		spd = Approach(spd,0,fric);
	}

	vx  = lengthdir_x(spd,moveDir);
	vy	= lengthdir_y(spd,moveDir);
}

if (sm_onExit(state)) {
	lightCol = make_colour_hsv(40,0,175);
	lightRadius = 192;
}