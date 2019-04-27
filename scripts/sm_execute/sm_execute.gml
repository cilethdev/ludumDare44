/// @desc sm_onExit(stateMachine);
/// @param stateMachine
var _stateMachine = argument0;
_stateMachine[@ sm.call] += 1;
script_execute(_stateMachine[@ sm.current]);