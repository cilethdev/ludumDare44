/// @desc HitboxCreate(x,y,xoff,yoff,xscale,yscale,life,team,damage,follow)
/// @arg xoff
/// @arg yoff
/// @arg xscale
/// @arg yscale
/// @arg life
/// @arg team
/// @arg damage
var _x		= argument0;
var _y		= argument1;
var _xoff	= argument2;
var _yoff	= argument3;
var _xscale	= argument4;
var _yscale	= argument5;
var _life	= argument6;
var _team	= argument7;
var _damage	= argument8;
var _follow = argument9;

var hb = instance_create_layer(_x,_y,"Instances",Hitbox);
	hb.owner = id;
	hb.follow = _follow;
	hb.xoff = _xoff;
	hb.yoff = _yoff;
	hb.life = _life;
	hb.team = _team;
	hb.image_xscale = _xscale;
	hb.image_yscale = _yscale;
	hb.damage = _damage;
