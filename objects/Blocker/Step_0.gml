/// @description 
if (destroyT > 0) {
	destroyT--;
}
if (destroyT == 0) {
	CamShake(0.6,0.6,0.25);
	instance_destroy();
}