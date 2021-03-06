/// @description 
controller = InputManager;
vx = 0;
vy = 0;
z  = 0;
grav = 0.3;
gravMax = 10;
vz = 0;
vJump = -6;
moveDir = 0;
spd = 0;
moveSpd = 3;
acc = 0.5;
fric = 0.25; 

// Dash
vDash = 10;
dashT = 0;
dashDur = 12;

// Spells
wpn = instance_create_depth(x,y,depth,obj_staff)
moveWhileCast = false;
spell = 0;
spellCastT = 0;
spellCastTMax = 60;
targetDir = 0;

// Hit/hurtboxes
hurtbox = HurtBoxCreate(id,32,32,-16,-31);

// Collision
onGround = true;
cLeft	= -1;
cRight	= -1;

state = sm_init(PlayerNormal);

// Visuals
facing = 1;
xscale = 1;
yscale = 1;
hitFlash = 0;
hitFlashT = 0;
destroyT = 0;
dead = false;

// Lighting
lightCol = make_colour_hsv(40,0,175);
lightRadius = 192;
lightRadius_a = 192;
rT = 0;
rInc = 8;
rAmp = 1;

// Inventory
inv = instance_create_depth(0,0,0,Inventory);

// PlayerStats
stats = instance_create_depth(0,0,0,PlayerStats);
UpdatePlayerStats();
hp = stats.stats[itemProps.hp]; // get rid of this.

// Combat vars
canHit = true;
canHitT = -1;

// Abilities
abilities = instance_create_depth(0,0,0,AbilityController);
currentSpell = -1;
currentAbility = -1;



// HUD
hud = instance_create_depth(0,0,0,HUD);
hud.playerStats = stats;
hud.player = id;

signal_connect_script("PlayerHit",id,PlayerHit);


// additionalStats
// Dungeon flags
hasKey = false;
