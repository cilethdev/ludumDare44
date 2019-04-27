/// @description 
draw_set_font(fnt_intro);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(fade);
draw_text(room_width/2,room_height/2,sceneIntro[scenePos,0]);
draw_set_alpha(1);