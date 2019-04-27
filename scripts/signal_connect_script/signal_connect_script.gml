///@desc Connects an instance and script to a signal. This only needs to be called once for an instance!
///@param {String/Real} SignalId
///@param {Instance} Instance The instance to connect, or object index to connect all
///@param {Script} ScriptId The script id to use.

if (!script_exists(argument2))
{
	show_error("The scriptId" + string(argument2) + " does not exist.", true);
	return;
}

if (!variable_global_exists("_gevent_SignalMap"))
	global._gevent_SignalMap = ds_map_create();
	
if (is_undefined(global._gevent_SignalMap[? argument0]))
{
	var newSignalList = ds_list_create();
	ds_map_add_list(global._gevent_SignalMap, argument0, newSignalList);	
}

var signalList  = global._gevent_SignalMap[? argument0];
var signalCount = ds_list_size(signalList);

for (var i = 0; i < signalCount; i++)
{
	var signal = signalList[| i];
	
	// If this instance already has a signal initialized, dont add again.
	if (signal[_iSIGNAL_INST] == argument1) return;
}

ds_list_add(signalList, [_SignalType.Script, argument1, argument2]);