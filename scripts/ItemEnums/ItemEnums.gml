enum items {
	book, // to rmeove?
	sword,
	
	// defensive
	crookedScale,
	silverSpoon,
	skiMask, // 
	//piggyBank, // 
	//bloodMoney, //
	
	// offensive
	
	// other
	heelies,
	
	length
}

enum itemProps {
	name,
	desc,
	sprite,
	icon,
	hp,
	armor,
	ms, //move speed
	ad, // attack damage
	ap, // ability power
	cdr, // cool down reduction
	ct, // cast time reduction 
	atmBonus, // bonus money from the atm.
	homing, // projectiles tendency to move towards nearest enemy
	rarity, // the number of slots the item takes up when generating items. larger numbers are more common.
	
	
	
	length, // should always stay at the end of the arrray.
}