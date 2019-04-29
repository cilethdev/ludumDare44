/// @description 
event_inherited();

state = sm_init(SlimeIdle);

z = 0;
vz = 0;
grav = 0.3;
gravMax = 10;
hp = enemyBaseHealth.small;
hpMax = enemyBaseHealth.small;
depth = -y;
xscale = 1;
yscale = 1;
facing = 1;

// attack
attackRange = 80;
attack = false;
attackDur = 12;
attackCD = 60;

moveSpd = 1;
vJump = -3.5;

dmg = 5;
dmgType = "light";

frozenAction = SlimeFrozen;