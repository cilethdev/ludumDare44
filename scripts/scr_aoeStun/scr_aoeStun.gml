var sp = instance_create_depth(x,y,depth+100,spell_aoeStun);
	sp.owner = Player;
	sp.dmg = round(abilities.spell[spells.aoeStun,spellProps.baseDmg] + (stats.stats[itemProps.ap] * abilities.spell[spells.aoeStun,spellProps.apRatio]));