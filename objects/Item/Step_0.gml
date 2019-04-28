/// @description 

// Inherit the parent event
event_inherited();

if (!canPickup) {
	canPickupT--;
	if (canPickupT <= 0) {
		canPickup = true;
	}
}

drawPickup = false;
if (place_meeting(x,y,Player)){
	drawPickup = true;
}
