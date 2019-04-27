ini_open("settings.ini");
// Movement
left	= ini_write_real("keybinds","left",ord("A"));
right	= ini_write_real("keybinds","right",ord("D"));
up		= ini_write_real("keybinds","up",ord("W"));
down	= ini_write_real("keybinds","down",ord("S"));
jump	= ini_write_real("keybinds","jump",vk_space);
dash	= ini_write_real("keybinds","dash",vk_shift);
interact	= ini_write_real("keybinds","interact",ord("F"));

// Abilities
atk1	= ini_write_real("keybinds","atk1",mb_left);
atk2	= ini_write_real("keybinds","atk2",mb_right);
spell1	= ini_write_real("keybinds","spell1",ord("Q"));
spell2	= ini_write_real("keybinds","spell2",ord("E"));
spell3	= ini_write_real("keybinds","spell3",ord("R"));
heal	= ini_write_real("keybinds","heal",ord("T"));
ini_close();

with(InputManager) {
	InitInputKeys();
}