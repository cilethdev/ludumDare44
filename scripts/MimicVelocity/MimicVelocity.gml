repeat(abs(vz)) {
	if (!(z+sign(vz) > 0)) {
		z += sign(vz);
	} else {
		vz = 0;
		break;
	}
}