/// @description 
/// @description 
draw_set_font(header ? fnt_menuHeader : fnt_menu);
draw_set_halign(center ? fa_center : fa_left);
draw_set_valign(fa_middle);
draw_set_colour(header ? make_colour_hsv(40,200,255) : c_white);
draw_text(x,y,text);