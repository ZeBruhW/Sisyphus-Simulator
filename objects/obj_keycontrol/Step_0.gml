//description Insert description here
//You can write your code in this editor

switch gamestate
	{
	case 0: //Before play begins
		//Check if the player is pushing D. If they are, then start the game in earnest
		if keyboard_check_direct(ord("D"))
			{
			gamestate = 1;
			};
		break; //Case 0 break.
		
	case 1: //The main gameplay loop.
		// Check if the player is even hitting the right buttons.
		// The actual code for this is in the create event.
		player_correct = check_player_keys(current_key_demands);
		
		//This part handles the timer ticking down, healing, and transition into the next gamestate.
		if player_correct //If the player is hitting the correct buttons...
			{
			if failure_timer < failure_timer_max //Check if the failure timer has gone down at all, and if so, heal it a bit.
				{
				failure_timer += failure_timer_restore_rate;
				};
			time_pushed += 1; //Iterate the score if you're pushing the boulder and still in play.
			};
		else //If the player is not hitting the correct buttons.
			{
			//Tick down the failure timer if they aren't.
			if failure_timer > 0
				{
				failure_timer -= 1;
				};
			else
				{
				//If they're below 0, then move to the fail animation state.
				gamestate = 2;
				};
			};
		break; //Case 1 break.
		
	case 2: //The camera pan cutscene
		//Eventually there will be code here. For now, it's just going to move right to three.
		
		//Setting variables for Case 3 to work with.
		final_time_pushed = time_pushed;
		
		//Final time pushed is the variable that ultimately will be exported as your score.
		
		var failure_animation_length = final_time_pushed * failure_animation_time_modifier;
		
		score_iteration_rate = final_time_pushed / failure_animation_length;
		
		gamestate = 3;
		
		break; //Case 2 break.
		
	case 3: //The failure animation as the rock rolls back down and the score ticks up.
		
		if player_display_score < final_time_pushed
			{
			player_display_score += score_iteration_rate;
			};
		else //If the score is equal to... player display score, i guess??
			{
			//gonna level this code is a nightmare.
			
			//Move following line to case 4 when transitioning from case 4 to 5 is implemented.
			global.newly_earned_xp += round(final_time_pushed / 60) //Add to XP the amount of seconds pushed, rounded to a whole number.
			obj_scorecontrol.new_score_recieved	= true;
			
			gamestate = 4;
			};
		
		break; //Case 3 break.
		
	case 4: //The final results screen.
		if keyboard_check_direct(vk_space)
			{
			gamestate = 5;
			}
		break; //Case 4 break.
		
	case 5: //Showing battle pass progress.
		break;
		
	case 6: //The battle pass has been shown. Display the back button.
		break;
	};
	
