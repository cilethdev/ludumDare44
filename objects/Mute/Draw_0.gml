/// @description 
draw_sprite_ext(sprite_index,image_index,x,y,xscale,yscale,0,c_white,1);

if (text != "") {
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(x,y-24,text,1,1,0);
}

