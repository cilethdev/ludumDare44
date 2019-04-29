/// @description 
if (instance_exists(Player)) {
	draw_set_font(fnt_hud);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	for(var i = 0; i < 5; i++) {
		draw_sprite_ext(spr_invSlot,0,posx+(i*32),posy,1,1,0,c_white,1);
		draw_sprite_ext(spr_spellPlaceholder,0,posx+(i*32),posy,1,1,0,c_white,1);
		var abilityTime = ability[i,abilProp.cdT];
		if (ability[i,abilProp.cdT] > 0) {
			draw_sprite_ext(spr_invSlot,0,posx+(i*32),posy,1,1,0,c_black,0.5);
			var cdText = string_format(ability[i,abilProp.cdT] / 60,1,1);
			draw_text_transformed(posx+(i*32)+16,posy+16,cdText,0.75,0.75,0);
		}
	
		//draw_sprite(ability[i,abilProp.input],0,posx+(i*32),posy);
		draw_text_transformed(posx+(i*32)+4,posy+4,ability[i,abilProp.input],0.75,0.75,0);
	}
}