/// @description 
hp = 1;
hpMax = 1;
hbCol = make_colour_hsv(2,225,200);
hitStun = 0;
hitFlash = 0;
state = sm_init(EnemyIdle);
checkDisT = irandom(15);
aggroRange = 1024;
attackRange = 0;
attack = false;
attackDur = 0;
attackCD = 0;
canHit = true;

frozenAction = EnemyFrozen;

dmg = 1;
dmgType = "light";

moveSpd = 1;

pathCheckT = irandom(15);
movePath = path_add();
vx = 0;
vy = 0;