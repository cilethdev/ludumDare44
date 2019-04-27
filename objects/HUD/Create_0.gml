/// @description 
playerStats = -1;
player = -1;

hbWidth = 1;
hbWidth_n = 1;
hbColor = make_colour_hsv(95,150,200);
hbDmgColor = make_colour_hsv(0,190,255);
hitDelay = 30;

shake = 15;
xoff = 0;
yoff = 0;

cx  = display_get_gui_width();
cy	= display_get_gui_height();

signal_connect_script("TakeDmg",id,scr_TakeDmg_HUD);