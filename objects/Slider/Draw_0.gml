/// @description 
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_dkgray,1);
draw_sprite_ext(sprite_index,image_index,x,y,value,yscale,0,c_white,1);

if (text != "") {
	draw_set_font(fnt_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(bbox_left+sprite_width/2,y-16,text,xscale,yscale,0);
}

