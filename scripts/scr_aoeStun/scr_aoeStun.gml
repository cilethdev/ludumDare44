var aoe = instance_create_depth(x,y,depth+100,spell_aoeStun);
aoe.dmg = abilities.spell[spells.aoeStun, spellProps.baseDmg] + abilities.spell[spells.aoeStun, spellProps.apRatio] *  PlayerStats.stats[itemProps.ap];
/*
	sp.owner = Player;
	sp.dmg = 5//round(abilities.spell[spells.aoeStun,spellProps.baseDmg] + (ap * abilities.spell[spells.aoeStun,spellProps.apRatio]));