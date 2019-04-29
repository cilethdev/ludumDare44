/// @description 
dmgT = (dmgT + 1) mod 60;
if (dmgT == 1) {
	var hit = instance_create_depth(x,y,depth,spell_makeItRain_aoeDmg);
	hit.dmg = dmg
}
partT = (partT + 1) mod 4;

if (partT == 1) {
	var dis,dir,ldx,ldy;
	dis = random_range(0,80);
	dir = irandom(360);
	ldx = x + lengthdir_x(dis,dir);
	ldy = y + lengthdir_y(dis,dir);
	instance_create_depth(ldx,ldy,-y-100,spell_makeItRainPart);
}

if (life) {
	life--;
} else {
	instance_destroy();
}