/// @description 
event_inherited();

state = sm_init(MimicWarmup);

z = 0;
vz = 0;
grav = 1;
gravMax = 8;
hp = enemyBaseHealth.large;
hpMax = enemyMaxHealth.large;
depth = -y;
xscale = 1;
yscale = 1;
facing = 1;

// attack
attackRange = 8;
attack = false;
attackDur = 12;
attackCD = 60;

warmup = 120;
canHitPlayer = false;

moveSpd = 2;
vJump = -5;

dmg = 25;
dmgType = "medium";

frozenAction = MimicFrozen;

runSprite = spr_mimic;
idleSprite = spr_mimic;