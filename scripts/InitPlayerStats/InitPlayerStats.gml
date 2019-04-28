


base[attr.hp,attrProp.key]		= "Health";
base[attr.hp,attrProp.val]		= 50;
base[attr.hp,attrProp.modType]	= modTypes.number;
base[attr.hp,attrProp.modMin]	= 0; 
base[attr.hp,attrProp.modMax]	= -1;

base[attr.armor,attrProp.key]		= "Armor";
base[attr.armor,attrProp.val]		= 0;
base[attr.armor,attrProp.modType]	= modTypes.number;
base[attr.armor,attrProp.modMin]	= 0;
base[attr.armor,attrProp.modMax]	= -1;

base[attr.ms,attrProp.key]		= "Move Speed";
base[attr.ms,attrProp.val]		= 3;
base[attr.ms,attrProp.modType]	= modTypes.number;
base[attr.ms,attrProp.modMin]	= 0;
base[attr.ms,attrProp.modMax]	= 2;

base[attr.ad,attrProp.key]		= "Attack Damage";
base[attr.ad,attrProp.val]		= 3;
base[attr.ad,attrProp.modType]	= modTypes.number;
base[attr.ad,attrProp.modMin]	= 0;
base[attr.ad,attrProp.modMax]	= -1;

base[attr.ap,attrProp.key]		= "Ability Power";
base[attr.ap,attrProp.val]		= 0;
base[attr.ap,attrProp.modType]	= modTypes.number;
base[attr.ap,attrProp.modMin]	= 0;
base[attr.ap,attrProp.modMax]	= -1;

base[attr.cdr,attrProp.key]		= "Cooldown Reduction";
base[attr.cdr,attrProp.val]		= 0;
base[attr.cdr,attrProp.modType]	= modTypes.percent;
base[attr.cdr,attrProp.modMin]	= 0;
base[attr.cdr,attrProp.modMax]	= 0.4;

base[attr.ct,attrProp.key]		= "Cast Time Reduction";
base[attr.ct,attrProp.val]		= 0;
base[attr.ct,attrProp.modType]	= modTypes.percent;
base[attr.ct,attrProp.modMin]	= 0;
base[attr.ct,attrProp.modMax]	= 0.5;



modifiers[attr.hp]	= ds_list_create();
modifiers[attr.armor]	= ds_list_create();
modifiers[attr.ms]	= ds_list_create();
modifiers[attr.ad]	= ds_list_create();
modifiers[attr.ap]	= ds_list_create();
modifiers[attr.cdr]	= ds_list_create();
modifiers[attr.ct]	= ds_list_create();

// Buff/Debuff
AddEffectModifier(Player,attr.ms,1,60*5);

UpdateModifiers();

//ds_list_add(modifiers[attr.hp],25);
//ds_list_add(modifiers[attr.armor],10);
//ds_list_add(modifiers[attr.ms],0.1);
//ds_list_add(modifiers[attr.ap],15);
//ds_list_add(modifiers[attr.cdr],0.1);
//ds_list_add(modifiers[attr.ct],0.25);

