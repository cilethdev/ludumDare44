/// @description 
radius = lerp(radius,64,0.05);
rotation += 3;


if (instance_exists(owner)) {
	for(var i = 0; i < ds_list_size(coins); i++) {
		with(coins[| i]) {
			xt = other.owner.x + lengthdir_x(other.radius,other.rotation+offset);
			yt = other.owner.y-16 + lengthdir_y(other.radius,other.rotation+offset);
		}
	}
} else {
	instance_destroy();
}

if (life) {
	life--;
} else {
	instance_destroy();
}