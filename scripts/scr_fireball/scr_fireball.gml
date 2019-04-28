targetDir = point_direction(x,y-16,mouse_x,mouse_y);
var fb = instance_create_depth(x,y-16,depth-1,spell_fireball);
	fb.direction = targetDir;
	fb.speed = 8;
	fb.image_angle = targetDir;
	fb.dmg = round(abilities.spell[spells.fireBall,spellProps.baseDmg] + (stats.stats[itemProps.ap] * abilities.spell[spells.fireBall,spellProps.apRatio]));