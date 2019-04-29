/// @description 
if (controller.state = controller.EDIT) { exit; }
with(par_menuItem) {
	hover = false;
	focus = false;
}
hover = true;

// SFX
PlaySound(snd_menuHover,1,1,0);