/// @description 
depth = -y;
x = lerp(x,xt,0.5);
y = lerp(y,yt,0.5);

partT = (partT + 1) mod 5;
if (partT == 1) {
	instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-10,spell_coinShieldPart);
}


if (hitDelay > 0) {
	hitDelay--;
}
if (hitDelay == 0) {
	hitDelay = -1;
	canHit = true;
}

if (life) {
	life--;
} else {
	instance_destroy();
}