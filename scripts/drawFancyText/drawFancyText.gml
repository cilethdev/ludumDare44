var text = argument0;
var color = argument1;
var scale = argument2;
var tx = argument3;
var ty = argument4;

var fnt = fnt_dmg;
draw_set_font(fnt);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_colour(c_black);
draw_text_transformed(tx+(1*scale),ty,text,scale,scale,0);
draw_text_transformed(tx-(1*scale),ty,text,scale,scale,0);
draw_text_transformed(tx,ty+(1*scale),text,scale,scale,0);
draw_text_transformed(tx,ty-(1*scale),text,scale,scale,0);

draw_set_color(color);
draw_text_transformed(tx,ty,text,scale,scale,0);
