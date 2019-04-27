/// @description 
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);

// Control
draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);

var ctW = string_width(controlText);
draw_text_transformed(bbox_left+((ctW/2 + 16)*xscale),y,controlText,xscale,yscale,image_angle);

// Input
var itW = string_width(inputText);
draw_text_transformed(bbox_right-((itW/2 + 16)*xscale),y,inputText,xscale,yscale,image_angle);