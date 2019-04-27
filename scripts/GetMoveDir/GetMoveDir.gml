if (controller.kLeft) {
	moveDir = 180;
	if (controller.kUp) {
		moveDir = 135;
	}
	if (controller.kDown) {
		moveDir = 225;
	}
}

if (controller.kRight) {
	moveDir = 0;
	if (controller.kUp) {
		moveDir = 45;
	}
	if (controller.kDown) {
		moveDir = 315;
	}
}

if (controller.kUp && (!controller.kLeft && !controller.kRight)) {
	moveDir = 90;
}

if (controller.kDown && (!controller.kLeft && !controller.kRight)) {
	moveDir = 270;
}