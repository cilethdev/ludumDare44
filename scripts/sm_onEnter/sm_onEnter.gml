/// @desc sm_onEnter(stateMachine);
/// @param stateMachine
var _stateMachine = argument0;

if (_stateMachine[@ sm.entering] == true) {
	_stateMachine[@ sm.entering] = false;
	return true;
}