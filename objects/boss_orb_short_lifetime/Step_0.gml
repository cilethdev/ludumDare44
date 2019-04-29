// Inherit the parent event
event_inherited();

if (lifetime) {
	lifetime--;
} else {
	instance_destroy();
}
