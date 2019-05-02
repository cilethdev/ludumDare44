/// @description 
if (room != level_1 && room != level_2 && room != level_3 && room != rm_test && room != level_boss) {
	instance_destroy();
}

// Hit/hurtboxes
hurtbox = HurtBoxCreate(id,32,32,-16,-31);
wpn = instance_create_depth(x,y,depth,obj_staff);
hasKey = false;

if (room == level_boss) {
	x = room_width/2;
	y = room_height/2+32;
	Camera.camx = x-Camera.camw/2;
	Camera.camy = y-16-Camera.camh/2;
}