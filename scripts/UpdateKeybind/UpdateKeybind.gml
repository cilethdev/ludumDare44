/// @desc UpdateKeybind(control,input);
/// @arg control
/// @arg input
var _control = argument0;
var _input = argument1;

ini_open("settings.ini");
ini_write_real("keybinds",_control,_input);
ini_close();

with(InputManager) {
	InitInputKeys();
}