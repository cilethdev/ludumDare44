var dis = min(point_distance(x,y-16,mouse_x,mouse_y), 256);
var dir = point_direction(x,y-16,mouse_x,mouse_y);
var ldx = lengthdir_x(dis,dir);
var ldy = lengthdir_y(dis,dir);

var sp = instance_create_depth(x+ldx,y+ldy,depth+10,spell_makeItRain);
	sp.owner = Player;
	sp.dmg = abilities.spell[@ spells.makeItRain,spellProps.baseDmg] + round((stats.stats[@ itemProps.ap] * abilities.spell[@ spells.makeItRain,spellProps.apRatio]));;