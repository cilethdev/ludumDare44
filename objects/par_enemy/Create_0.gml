/// @description 
hp = 1;
hpMax = 1;
hbCol = make_colour_hsv(2,225,200);
hitStun = 0;
hitFlash = 0;
state = sm_init(EnemyIdle);
checkDisT = irandom(15);
aggroRange = 256;
fireCD = 90;
pathCheckT = irandom(15);
movePath = path_add();
vx = 0;
vy = 0;