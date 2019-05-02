/// @description 
signal_disconnect_all(id);
if (room == level_1 || room == level_2 || room == level_3 || room == rm_test || room == level_boss) {
	instance_create_depth(x,y,depth,PlayerDeath);
}

with(inv) {
	instance_destroy();
}
with(hud) {
	instance_destroy();
}
with(stats) {
	instance_destroy();
}
with(abilities) {
	instance_destroy();
}