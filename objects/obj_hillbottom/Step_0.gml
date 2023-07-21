/// @description Insert description here
// You can write your code in this editor

switch obj_keycontrol.gamestate
	{
	case 1:
		if obj_keycontrol.player_correct and y < room_height
			{
			y += pushing_movement_rate / 3;
			x -= pushing_movement_rate;
			}
		break;
	case 3: //Failure animation.
		
		steps_left = obj_keycontrol.final_time_pushed - obj_keycontrol.player_display_score
		
		//Do different animation timings for if the hill is still visible or not.
		
		//if y < room_height
			//{
			//Do a different animation timing for this one??
			//}
		
		if rate_found == false
				{	
				starting_step_count = steps_left;
				
				ending_initial_x = x;
				ending_initial_y = y;

				if ending_initial_y < room_height
					{
					start_moving_threshold = starting_step_count;
					};

				rate_found = true;
				}
		
		if y > final_y and steps_left <= start_moving_threshold and steps_left > 0
			{

			var normalized_rise_progress = 1 - (steps_left / starting_step_count);

			x = lerp(ending_initial_x, final_x, normalized_rise_progress / 3);
			y = lerp(ending_initial_y, final_y, normalized_rise_progress);
			}
		break;
	};