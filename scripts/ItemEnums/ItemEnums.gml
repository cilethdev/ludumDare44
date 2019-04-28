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
	twoDollarBill,
	magnet,
	
	length
}

enum itemProps {
	hp,
	armor,
	ms, //move speed
	ad, // attack damage
	ap, // ability power
	cdr, // cool down reduction
	ct, // cast time reduction 
	atmBonus, // bonus money from the atm.
	homing, // projectiles tendency to move towards nearest enemy
	bleed, // does damage over time to the enemy.
	projectiles,
	magnet, // attract coins.
	healthSteal, // heal on damage.
	explodeSize, // deal aoe damage on bullet hit
	explodDmg, // damage of explosion.
	accuracy, // randomness of shot.
	wave, // bullet stream waves back and forth.
	value, // the base value of the item
		
	
	// excluded from stat calculation.
	name,
	desc,
	sprite,
	icon,
	rarity, // the number of slots the item takes up when generating items. larger numbers are more common.
	length // should always stay at the end of the arrray.
}