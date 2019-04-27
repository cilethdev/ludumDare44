///@desc Connects an instance and user event to a signal
///@param {String/Real} SignalId An identifier for this signal
///@param {Instance} Instance The instance to connect, or object index to connect all
///@param {UserEvent} UserEventId The event id to use, this does not support arguments

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

ds_list_add(signalList, [_SignalType.UserEvent, argument1, argument2]);