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

posx = display_get_gui_width() / 2 - (32*5)/2;
posy = display_get_gui_height() - 40;

InitSpells();


ability[abils.atk1,abilProp.spell]		= "Primary Attack";
ability[abils.atk1,abilProp.input]		= GetKeyString(InputManager.atk1);
ability[abils.atk1,abilProp.cd]			= 30;
ability[abils.atk1,abilProp.ct]			= 0;
ability[abils.atk1,abilProp.canUse]		= true;
ability[abils.atk1,abilProp.cdT]		= -1;

ability[abils.atk2,abilProp.spell]		= spells.fireBall;
ability[abils.atk2,abilProp.input]		= GetKeyString(InputManager.atk2);
ability[abils.atk2,abilProp.cd]			= spell[spells.fireBall,spellProps.cd];;
ability[abils.atk2,abilProp.ct]			= spell[spells.fireBall,spellProps.ct];;
ability[abils.atk2,abilProp.canUse]		= true;
ability[abils.atk2,abilProp.cdT]		= -1;

//ability[abils.spell1,abilProp.spell]	= spells.fireBall;
//ability[abils.spell1,abilProp.input]	= spr_spell1;
//ability[abils.spell1,abilProp.cd]		= spell[spells.fireBall,spellProps.cd];
//ability[abils.spell1,abilProp.ct]		= spell[spells.fireBall,spellProps.ct];
//ability[abils.spell1,abilProp.canUse]	= true;
//ability[abils.spell1,abilProp.cdT]		= -1;

ability[abils.spell1,abilProp.spell]	= spells.aoeStun;
ability[abils.spell1,abilProp.input]	= GetKeyString(InputManager.spell1);
ability[abils.spell1,abilProp.cd]		= spell[spells.aoeStun,spellProps.cd];
ability[abils.spell1,abilProp.ct]		= spell[spells.aoeStun,spellProps.ct];
ability[abils.spell1,abilProp.canUse]	= true;
ability[abils.spell1,abilProp.cdT]		= -1;

ability[abils.spell2,abilProp.spell]	= spells.coinShield;
ability[abils.spell2,abilProp.input]	= GetKeyString(InputManager.spell2);
ability[abils.spell2,abilProp.cd]		= spell[spells.coinShield,spellProps.cd];
ability[abils.spell2,abilProp.ct]		= spell[spells.coinShield,spellProps.ct];
ability[abils.spell2,abilProp.canUse]	= true;
ability[abils.spell2,abilProp.cdT]		= -1;

ability[abils.spell3,abilProp.spell]	= spells.makeItRain;
ability[abils.spell3,abilProp.input]	= GetKeyString(InputManager.spell3);
ability[abils.spell3,abilProp.cd]		= spell[spells.makeItRain,spellProps.cd];
ability[abils.spell3,abilProp.ct]		= spell[spells.makeItRain,spellProps.ct];
ability[abils.spell3,abilProp.canUse]	= true;
ability[abils.spell3,abilProp.cdT]		= -1;