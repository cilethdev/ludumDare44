///@desc This function will emit a signal. signals will not be automatically cleaned up on instance_destroy(). You should call signal_disconnect_all(instanceId) if you are worried about memory!
/// This allows you to deactivate instances without breaking their connection (the functions will not be called, but the connection will be preserved upon instance activation), 
///@param {String} Signal to send
///@param {Arguments...} Args Arguments to use with script. No arguments can be used with user event types 

if (!variable_global_exists("_gevent_SignalMap")) return;

var signalName = argument[0];
var signalList = global._gevent_SignalMap[? signalName];

if (is_undefined(signalList))
{
	show_debug_message("The signal " + string(signalName) + " has not been created. No signals to fire.");
	return undefined;
}

var signalCount = ds_list_size(signalList);

var signal, signalType, signalInst, signalFunctionId;

// Reverse iteration avoids issues with deleting indices during iteration
for (var i = signalCount - 1; i >= 0; --i)
{
	signal = signalList[| i];
	
	signalType		   = signal[_iSIGNAL_TYPE];
	signalInst		   = signal[_iSIGNAL_INST];
	signalFunctionId   = signal[_iSIGNAL_FUNCID];
	
	if (signalType == _SignalType.UserEvent)
	{
		with (signalInst) 
		{
			event_user(signalFunctionId);	
		}
	}
	else if (signalType == _SignalType.Script)
	{
		with (signalInst)
		{
			switch(argument_count - 1)
			{
				case 0: script_execute(signalFunctionId); break;
				case 1: script_execute(signalFunctionId, argument[1]); break;
				case 2: script_execute(signalFunctionId, argument[1], argument[2]); break;
				case 3: script_execute(signalFunctionId, argument[1], argument[2], argument[3]); break;
				case 4: script_execute(signalFunctionId, argument[1], argument[2], argument[3], argument[4]); break;	
				default:
					show_error("Signals cannot use more than 4 arguments", true);
					break;
			}
		}
	}
}