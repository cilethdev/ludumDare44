var c = instance_create_depth(x,y,depth,spell_coinShield);
c.owner = Player;
c.dmg = round(abilities.spell[spells.coinShield,spellProps.baseDmg] + (stats.stats[itemProps.ap] * abilities.spell[spells.coinShield,spellProps.apRatio]));;