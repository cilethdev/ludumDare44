if (sm_onEnter(state)) {
	
} 
GetMoveDir();

if (controller.kLeft || controller.kRight || controller.kUp || controller.kDown) {
	sprite_index = spr_heroRun;
	spd = Approach(spd,stats.stats[itemProps.ms],acc);
} else {
	sprite_index = spr_heroIdle;
	spd = Approach(spd,0,fric);
}

vx  = lengthdir_x(spd,moveDir);
vy	= lengthdir_y(spd,moveDir);

// z Velocity
if (!onGround) {
	vz = Approach(vz,gravMax,grav);
} else {
	vz = 0;
}

//if (controller.kJumpP && onGround) {
//	vz = vJump;
	
//	// VFX
//	xscale = 0.5;
//	yscale = 1.5;
//}

if (controller.kSpell1 && abilities.ability[abils.spell1,abilProp.canUse] && onGround) {
	currentSpell = abilities.ability[abils.spell1,abilProp.spell];
	currentAbility = abils.spell1;
	sm_change(state,PlayerSpell);
}

if (controller.kSpell2 && abilities.ability[abils.spell2,abilProp.canUse] &&  onGround) {
	currentSpell = abilities.ability[abils.spell2,abilProp.spell];
	currentAbility = abils.spell2;
	sm_change(state,PlayerSpell);
}

if (controller.kSpell3 && abilities.ability[abils.spell3,abilProp.canUse] &&  onGround) {
	currentSpell = abilities.ability[abils.spell3,abilProp.spell];
	currentAbility = abils.spell3;
	sm_change(state,PlayerSpell);
}

if (controller.kHeal && abilities.ability[abils.heal,abilProp.canUse] &&  onGround) {
	currentSpell = abilities.ability[abils.heal,abilProp.spell];
	currentAbility = abils.heal;
	sm_change(state,PlayerSpell);
}


if (controller.kDashP && onGround && canDash) {
	sm_change(state,PlayerDash);
}

// Basic attack
if (controller.kAtk1 && abilities.ability[abils.atk1,abilProp.canUse]) {
	abilities.ability[abils.atk1,abilProp.cdT] = abilities.ability[abils.atk1,abilProp.cd]; // TODO firerate
	abilities.ability[abils.atk1,abilProp.canUse] = false;
	
	var aim = point_direction(x,y+z-16,mouse_x,mouse_y);
	var numProjectiles = max( floor(stats.stats[itemProps.projectiles] + 1) , 1);
	var spread = 10;
	var totalSpread = (numProjectiles-1) * spread;
	for(var i = 0; i < numProjectiles; i++){
		var fb = instance_create_depth(x,y-16+z,depth-1,spell_basicAttack);
		fb.direction = aim - (totalSpread/2) + i*spread;
		fb.speed = 8;
		fb.image_angle = fb.direction;
		fb.homing = stats.stats[itemProps.homing];
		fb.dmg = stats.stats[itemProps.ad];
	}
	
	
	with(obj_staff) {
		state = ONPLAYER;
		trailT = 180;
		swingResetT = 90;
		if (swingOffsetTarget == 0) {
			swingOffsetTarget = 65;
		}
		swingOffsetTarget *= -1;
	}
	
	// SFX
	PlaySound(snd_fireBall_start,0.5,random_range(1.1,1.3),0);
}

// FOOTSTEPS
if (sprite_index == spr_heroRun) {
	var frame = floor(image_index);
	if (frame == 0 || frame == 3) {
		if (!footstep) {
			footstep = true;
			// SFX
			var snd = irandom(7);
			PlaySound(footStepSounds[snd],1,random_range(0.8,1.2),0);
		}
	} else {
		footstep = false;
	}
}
if (sm_onExit(state)) {
	
}