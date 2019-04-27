/// @desc sm_init(initialState);
/// @param initialState

stateMachine[sm.current] = argument0;
stateMachine[sm.entering] = false;
stateMachine[sm.exiting] = false;
stateMachine[sm.call] = 0;

return stateMachine;