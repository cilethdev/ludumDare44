/// @description 
global.release = false;

// initialize singletons
instance_create_depth(0,0,0,InputManager);
instance_create_depth(0,0,0,Camera);
//instance_create_depth(0,0,0,Lighting);
instance_create_depth(0,0,0,AudioManager);
instance_create_depth(0,0,0,PauseManager);
instance_create_depth(0,0,0,Cursor);

// gui
display_set_gui_size(640,360);

// data
InitItems();

room_goto_next();