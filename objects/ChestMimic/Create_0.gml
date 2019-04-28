/// @description 
event_inherited();
hp = enemyBaseHealth.large;
hpMax = enemyMaxHealth.large;
depth = -y;

// attack
attack = false;
attackDur = 50;
attackCD = 180;
attackRange = 32;
state = sm_init(InitChestMimic);

z = -1;
vz = 0;
grav = 0.3;
gravMax = 10;
xscale = 1;
yscale = 1;
facing = 1;

moveSpd = 0.9;
vJump = -6;

dmg = 25;
dmgType = "heavy";

timeTillMove = 60;

frozenAction = ChestMimicFrozen;