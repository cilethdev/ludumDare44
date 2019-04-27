/// @desc CamShake(offset,angle,zoom);
/// @arg offset
/// @arg angle
/// @arg zoom

if (instance_exists(Camera)) {
	Camera.shake =  max(Camera.shake,argument0);
	Camera.shakeAngle = max(Camera.shake,argument1);
	Camera.shakeZoom = max(Camera.shakeZoom,argument2);
}
