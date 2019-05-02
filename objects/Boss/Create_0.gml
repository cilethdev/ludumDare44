/// @description 
canHit = false;
startDelay = 90;
hp = 500;
hpMax = 500;
CamShake(0.5,0.25,0.5);

state = sm_init(BossSpawn);
dead = false;
deathT = 0;
// Move vars
vx = 0;
vy = 0;
z = 0;
vz = 0;

// Attack vars
canFire = true;
fireDelay = 0;
fireCD = -1;

dashing = false;
dashDelay = 0;
dashSpd = 10;
dashT = 120;
dashCount = 0;


waitT = 0;

hitFlash = 0;
facing = 1;
xscale = 1;
yscale = 1;