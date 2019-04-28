/// @description 
if (!surface_exists(lightSurf)) {
	//lightSurf = surface_create(camera_get_view_width(Camera.cam)+buffer,camera_get_view_height(Camera.cam)+buffer);
	lightSurf = surface_create(1920,1080);
}

var cx = round(Camera.camx)-(buffer >> 1);
var cy = round(Camera.camy)-(buffer >> 1);

surface_set_target(lightSurf);

draw_clear_alpha(darkCol,1);
gpu_set_blendmode(bm_max);

if (room == m_main || room == m_settings) {
	draw_circle_color(Camera.camw/2-cx,Camera.camh/2-cy,192,c_gray,c_black,false);
}


if (instance_exists(Player)) {
	with(Player) {
		draw_circle_color(x-cx,(y+z-16)-cy,lightRadius_a,lightCol,c_black,false);
	}
}

if (instance_exists(obj_light)) {
	with(obj_light) {
		draw_sprite_ext(spr_light,0,x-cx,y-cy,scale,scale,0,col,1);
	}
}

if (instance_exists(spell_fireball)) {
	with(spell_fireball) {
		draw_sprite_ext(spr_light,0,x-cx,y+z-cy,1,1,0,lightCol,1);
	}
}

if (instance_exists(spell_fireball_explosion)) {
	with(spell_fireball_explosion) {
		draw_sprite_ext(spr_light,0,x-cx,y-cy,1.5,1.5,0,image_blend,1);
	}
}

if (instance_exists(spell_basicAttack)) {
	with(spell_basicAttack) {
		draw_circle_color(x-cx,y-cy,32,c_orange,c_black,false);
	}
}
if (instance_exists(spell_fireball_ember)) {
	with(spell_fireball_ember) {
		draw_circle_color(x-cx,y-cy,8,c_orange,c_black,false);
	}
}

if (instance_exists(Dummy)) {
	with(Dummy) {
		draw_circle_color(x-cx,y-16-cy,96,c_gray,c_black,false);
	}
}

if (instance_exists(obj_orb)) {
	with(obj_orb) {
		draw_circle_color(x-cx,y-cy,48,c_red,c_black,false);
	}
}

if (instance_exists(Item)) {
	with(Item) {
		draw_circle_color(x+16-cx,y+16-cy,48,lightCol,c_black,false);
	}
}

surface_reset_target();

gpu_set_blendmode_ext(bm_dest_color, bm_subtract);

draw_surface_ext(lightSurf,cx,cy,1,1,0,c_white,0.5);

gpu_set_blendmode(bm_normal);
