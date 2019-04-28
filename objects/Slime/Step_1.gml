onGround = (z >= 0);

// z Velocity
if (!onGround) {
	vz = Approach(vz,gravMax,grav);
} else {
	vz = 0;
}