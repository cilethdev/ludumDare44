var chance = irandom(100);

switch(room) {
	case level_1:
		if (chance < 20) {
			return Goblin;
		} else {
			return Slime;
		}
		break;
	case level_2:
		if (chance < 10) {
			return BigSlime;
		}
		else if (chance < 30) {
			return Goblin;
		} else {
			return Slime;
		}
		break;
	case level_3:
		if (chance < 10) {
			return BigSlime;
		}
		else if (chance < 30) {
			return Goblin;
		}
		else if (chance < 40) {
			return Dummy;
		} else {
			return Slime;
		}
		break;
}