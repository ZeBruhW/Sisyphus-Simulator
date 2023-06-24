//description Insert description here
//You can write your code in this editor

// Check if the player is even hitting the right buttons.
player_correct = check_player_keys(current_key_demands);
	
//This part handles the transition into the failstate.

if player_correct == false and in_play//If they aren't pushing the right buttons, then
	{	
	// If the player still has time left before the rock falls, the timer ticks down.
	if failure_timer > 0
		{
		failure_timer -= 1;
		};	
	//If they don't have time left on the failure timer, then we start the failure sequence.
	else
		{
		in_play = false;
		}
	};
else if in_play == true //If they *are* pushing the right buttons and they're still in play...
	{
	if failure_timer < failure_timer_max //Check if the failure timer has gone down at all, and if so, heal it a bit.
		{
		failure_timer += failure_timer_restore_rate;
		};
	time_pushed += 1; //Iterate the score if you're pushing the boulder and still in play.
	};