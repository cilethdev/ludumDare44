/// @description 
scale = Approach(scale,1,0.1);
vy = Approach(vy, 5, 0.15);
x += vx;
y += vy;
if (life) { life--; } else { instance_destroy(); }