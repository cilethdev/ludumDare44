/// @description 
if (instance_exists(Player)) {
	facing = Player.x > x ? 1 : -1;
}
depth = -y;
sm_execute(state);