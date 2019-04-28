/// @description 
enum abils {
	atk1,
	atk2,
	spell1,
	spell2,
	spell3,
	heal
}

enum abilProp {
	spell,
	input,
	cd,
	ct,
	canUse,
	cdT
}

posx = display_get_gui_width() / 2 - (32*6)/2;
posy = display_get_gui_height() - 40;

InitSpells();


ability[abils.atk1,abilProp.spell]		= "Primary Attack";
ability[abils.atk1,abilProp.input]		= spr_mouse1;
ability[abils.atk1,abilProp.cd]			= 30;
ability[abils.atk1,abilProp.ct]			= 0;
ability[abils.atk1,abilProp.canUse]		= true;
ability[abils.atk1,abilProp.cdT]		= -1;

ability[abils.atk2,abilProp.spell]		= "Secondary Attack";
ability[abils.atk2,abilProp.input]		= spr_mouse2;
ability[abils.atk2,abilProp.cd]			= 180;
ability[abils.atk2,abilProp.ct]			= 30;
ability[abils.atk2,abilProp.canUse]		= true;
ability[abils.atk2,abilProp.cdT]		= -1;

ability[abils.spell1,abilProp.spell]	= spells.fireBall;
ability[abils.spell1,abilProp.input]	= spr_spell1;
ability[abils.spell1,abilProp.cd]		= spell[spells.fireBall,spellProps.cd];
ability[abils.spell1,abilProp.ct]		= spell[spells.fireBall,spellProps.ct];
ability[abils.spell1,abilProp.canUse]	= true;
ability[abils.spell1,abilProp.cdT]		= -1;

ability[abils.spell2,abilProp.spell]	= spells.aoeStun;
ability[abils.spell2,abilProp.input]	= spr_spell2;
ability[abils.spell2,abilProp.cd]		= spell[spells.aoeStun,spellProps.cd];
ability[abils.spell2,abilProp.ct]		= spell[spells.aoeStun,spellProps.ct];
ability[abils.spell2,abilProp.canUse]	= true;
ability[abils.spell2,abilProp.cdT]		= -1;

ability[abils.spell3,abilProp.spell]	= spells.coinShield;
ability[abils.spell3,abilProp.input]	= spr_spell3;
ability[abils.spell3,abilProp.cd]		= spell[spells.coinShield,spellProps.cd];
ability[abils.spell3,abilProp.ct]		= spell[spells.coinShield,spellProps.ct];
ability[abils.spell3,abilProp.canUse]	= true;
ability[abils.spell3,abilProp.cdT]		= -1;

ability[abils.heal,abilProp.spell]		= spells.fireBall;
ability[abils.heal,abilProp.input]		= spr_heal;
ability[abils.heal,abilProp.cd]			= spell[spells.fireBall,spellProps.cd];
ability[abils.heal,abilProp.ct]			= spell[spells.fireBall,spellProps.ct];
ability[abils.heal,abilProp.canUse]		= true;
ability[abils.heal,abilProp.cdT]		= -1;