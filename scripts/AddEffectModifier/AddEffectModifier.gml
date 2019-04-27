/// @desc AddEffectModifier(target,effect,amount,duration);
/// @arg target
/// @arg attribute
/// @arg amount
/// @arg duration
var _target = argument0;
var _effect = argument1;
var _amount = argument2;
var _duration = argument3;

var effect = instance_create_depth(_target.x,_target.y,0,Effect);
	effect.target = _target;
	effect.duration = _duration;
	effect.attribute = _effect;
	effect.amount = _amount;
	ds_list_add(PlayerStats.modifiers[argument1],effect);


return effect.id;