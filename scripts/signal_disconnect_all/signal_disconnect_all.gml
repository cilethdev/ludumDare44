///@desc Disconnects all signals assigned to the given instance
///@param {Instance} InstanceId The instance id to disconnect

if (!variable_global_exists("_gevent_SignalMap")) return;

var inst = argument0;
var key = ds_map_find_first(global._gevent_SignalMap);

while (!is_undefined(key))
{
	var signalList  = global._gevent_SignalMap[? key];
	var signalCount = ds_list_size(signalList);
	
	for (var i = signalCount - 1; i >= 0; --i)
	{
		var signal = signalList[| i];
		var signalInstId = signal[_iSIGNAL_INST];
		
		if (signalInstId == inst)
		{
			ds_list_delete(signalList, i);
		}
	}
	
	key = ds_map_find_next(global._gevent_SignalMap, key);
}