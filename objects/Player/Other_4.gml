/// @description 
if (room != level_1 && room != level_2 && room != level_3 && room != rm_test) {
	instance_destroy();
}

// Hit/hurtboxes
hurtbox = HurtBoxCreate(id,32,32,-16,-31);
wpn = instance_create_depth(x,y,depth,obj_staff);
hasKey = false;