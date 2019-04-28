var aoe = instance_create_depth(x,y,depth+100,spell_aoeStun);
aoe.dmg = spell[spells.aoeStun, spellProps.baseDmg] + spell[spells.aoeStun, spellProps.apRatio] *  PlayerStats.stats[itemProps.ap];
/*
	sp.owner = Player;
	aoeStun.dmg = 5//round(abilities.spell[spells.aoeStun,spellProps.baseDmg] + (ap * abilities.spell[spells.aoeStun,spellProps.apRatio]));