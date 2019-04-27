/// @description 
// outline
draw_set_font(fnt);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);
draw_text_transformed(x+(1*scale),y,text,scale,scale,0);
draw_text_transformed(x-(1*scale),y,text,scale,scale,0);
draw_text_transformed(x,y+(1*scale),text,scale,scale,0);
draw_text_transformed(x,y-(1*scale),text,scale,scale,0);

draw_set_color(col);
draw_text_transformed(x,y,text,scale,scale,0);