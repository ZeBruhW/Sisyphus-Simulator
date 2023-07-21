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
		
		if y < room_height
			{
			//Do a different animation timing for this one??
			}
		
		if y > final_y and steps_left <= 500 and steps_left > 0
			{
				
			if rate_found == false
				{			
				distance_to_final_x = (final_x - x);
				distance_to_final_y = (final_y - y);
				
				moverate_x = distance_to_final_x / steps_left
				moverate_y = distance_to_final_y / steps_left
				}
			//This needs to be changed to some sort of formula to ensure it always gets there, rather than
			//A flat movement speed.

			x -= moverate_x;
			y += moverate_y;
			}
		break;
	};