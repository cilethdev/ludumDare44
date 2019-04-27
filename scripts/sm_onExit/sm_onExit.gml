/// @desc sm_onExit(stateMachine);
/// @param stateMachine
var _stateMachine = argument0;
if (_stateMachine[@ sm.exiting] == true) {
	_stateMachine[@ sm.exiting] = false;
	return true;
}