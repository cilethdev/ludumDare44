/// @description
// shadow
draw_sprite_ext(spr_playerShadow,0,x,y,1-(0.5*(z/-96)),1-(0.5*(z/-96)),0,c_white,0.25);
if (hitFlash) {
	shader_set(shdr_flash);
	draw_sprite_ext(sprite_index,image_index,x,y+z,xscale*facing,yscale,image_angle,image_blend,image_alpha);
	shader_reset();
} else {
	draw_sprite_ext(sprite_index,image_index,x,y+z,xscale*facing,yscale,image_angle,image_blend,image_alpha);
}


var mdir = point_direction(x,y-16,mouse_x,mouse_y);
var ys = mouse_x > x ? 1 : -1;
var ldx = lengthdir_x(16,mdir);
var ldy = lengthdir_y(16,mdir);
draw_sprite_ext(spr_staff,0,x+ldx,y-16+ldy+z,1,ys,mdir+(-15*ys),c_white,1);

draw_text(x,bbox_top-32,string(moveSpd));