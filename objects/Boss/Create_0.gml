/// @description 
hbCol = make_colour_hsv(2,225,200);
checkDisT = irandom(15);
aggroRange = 1024;

pathCheckT = irandom(15);
movePath = path_add();
vx = 0;
vy = 0;

state = sm_init(BossWarmup);

canHit = true;

z = 0;
vz = 0;
grav = 0.3;
gravMax = 10;
hp = enemyBaseHealth.boss;
hpMax = enemyMaxHealth.boss;
depth = -y;
xscale = 1;
yscale = 1;
facing = 1;
shake = 0;
wait = 0;

minionSpawn = -1;

// attack
attackRange = 8;
attack = false;
attackDur = 60;
attackCD = 60;

moveSpd = 1.5;
vJump = -7;

dmg = 100;
dmgType = "heavy";

stage2 = false;
stage3 = false;
stage4 = false;