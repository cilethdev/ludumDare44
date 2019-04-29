/// @description 
if (instance_exists(Player)) {
	// Healthbar
	draw_set_font(fnt_hud);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	var hbx,hby;
	hbx = 32+xoff;
	hby = 24+yoff;

	draw_sprite(spr_healthBar,1,hbx,hby);
	draw_sprite_ext(spr_healthBar,2,hbx,hby,hbWidth_n,1,0,hitDelay ? c_white : hbDmgColor,1);
	draw_sprite_ext(spr_healthBar,2,hbx,hby,hbWidth,1,0,hbColor,1);
	draw_sprite(spr_healthBar,0,hbx,hby);

	draw_set_colour(c_black);
	draw_text_transformed(hbx+64+1,hby,string(player.hp) + " / " + string(playerStats.stats[attr.hp]),0.5,0.5,0);
	draw_text_transformed(hbx+64-1,hby,string(player.hp) + " / " + string(playerStats.stats[attr.hp]),0.5,0.5,0);
	draw_text_transformed(hbx+64,hby+1,string(player.hp) + " / " + string(playerStats.stats[attr.hp]),0.5,0.5,0);
	draw_text_transformed(hbx+64,hby-1,string(player.hp) + " / " + string(playerStats.stats[attr.hp]),0.5,0.5,0);

	draw_set_colour(c_white);
	draw_text_transformed(hbx+64,hby,string(player.hp) + " / " + string(playerStats.stats[attr.hp]),0.5,0.5,0);


	if(Player.spellCastT > 0) {
		draw_sprite(spr_castBar,0,cx/2-60,cy-56);
		draw_sprite_ext(spr_castBar,1,cx/2-60,cy-56,(Player.spellCastT/Player.spellCastTMax),1,0,c_white,1);
		draw_sprite(spr_castBar,2,cx/2-60,cy-56);
	}
	
	
	// Key
	if (Player.hasKey) {
		draw_sprite_ext(spr_key2,0,24,64,1,1,0,c_white,1);
	}
}

