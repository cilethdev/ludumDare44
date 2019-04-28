/// @description 
image_index = irandom(3);
offset = 0;
xt = x;
yt = y;
life = room_speed*5+1;
lightCol = make_colour_hsv(40,200,255);
dmg = 2;
canHit = true;
hitDelay = 0;

partT = irandom(5);