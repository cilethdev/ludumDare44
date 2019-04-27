/// @description 

// MovementInputs
kLeft	= keyboard_check(left);
kRight	= keyboard_check(right);
kUp		= keyboard_check(up);
kDown	= keyboard_check(down);
kJumpP	= keyboard_check_pressed(jump);
kDashP	= keyboard_check_pressed(dash);

if (interact == mb_left || interact == mb_right) {
	kInteract	= mouse_check_button(interact);	
} else {
	kInteract	= keyboard_check(interact);
}

horizontal	= kRight - kLeft;
vertical	= kDown - kUp;

// Spells

if (atk1 == mb_left || atk1 == mb_right) {
	kAtk1	= mouse_check_button(atk1);	
} else {
	kAtk1	= keyboard_check(atk1);
}

if (atk2 == mb_left || atk2 == mb_right) {
	kAtk2	= mouse_check_button(atk2);	
} else {
	kAtk2	= keyboard_check(atk2);
}

if (spell1 == mb_left || spell1 == mb_right) {
	kSpell1	= mouse_check_button_pressed(spell1);	
} else {
	kSpell1	= keyboard_check_pressed(spell1);
}

if (spell2 == mb_left || spell2 == mb_right) {
	kSpell2	= mouse_check_button_pressed(spell2);	
} else {
	kSpell2	= keyboard_check_pressed(spell2);
}

if (spell3 == mb_left || spell3 == mb_right) {
	kSpell3	= mouse_check_button_pressed(spell3);	
} else {
	kSpell3	= keyboard_check_pressed(spell3);
}

if (heal == mb_left || heal == mb_right) {
	kHeal	= mouse_check_button_pressed(heal);	
} else {
	kHeal	= keyboard_check_pressed(heal);
}