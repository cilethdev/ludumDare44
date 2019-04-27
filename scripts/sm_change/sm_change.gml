/// @desc sm_onExit(stateMachine,newState);
/// @param stateMachine
/// @param newState
var _stateMachine = argument0;

_stateMachine[@ sm.current]		= argument1;
_stateMachine[@ sm.entering]	= true;
_stateMachine[@ sm.exiting]		= true;
_stateMachine[@ sm.call]		= -1;

