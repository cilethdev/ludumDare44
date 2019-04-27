/// @desc sm_getCurrent(stateMachine);
/// @arg stateMachine
var _sm = argument0;
if (script_exists(_sm[@ sm.current])) {
	return script_get_name(_sm[@ sm.current]);
}