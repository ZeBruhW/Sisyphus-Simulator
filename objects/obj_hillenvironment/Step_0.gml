switch obj_keycontrol.gamestate
	{
	case 0: //Before the game starts.
		break; //Case 0 break.
		
	case 1: //The actual gameplay loop.
	
		//Whenever the player is pushing the right buttons, move the objects down and to the left.
		move_object(pushing_movement_rate * obj_keycontrol.player_correct);

		//If the object is offscreen at the bottom, 
		//then we move it all the way back to the far left side, where it rolls on.
		if y >= room_height + sprite_height and (irandom(120) == 120)
			{
			var spawn_offset_x = 120;
			var spawn_offset_y = 380 - (spawn_offset_x / 3)
	
			x = room_width + spawn_offset_x;
			y = random_range(spawn_offset_y, room_height);
	
			randomize_sprite();
			};
		break; //Case 1 break.
		
	case 2: //Camera moving to the left to reveal the top of the hill.
		break; //Case 2 break.
		
	case 3: //Rolling back down.
		move_object(falling_movement_rate);
		
		//If the object is offscreen at the left
		//then we move it all the way back to the bottom, where it rolls on.
		if x >= room_width + sprite_width and (irandom(60) == 60)
			{
			var spawn_offset_y = 224;
			var spawn_offset_x = 0 - (spawn_offset_y * 2);
	
			x = random_range(spawn_offset_x, room_width - 200);
			y = room_height + spawn_offset_y;
			
			randomize_sprite();	
			};
		break; //Case 3 break.
		
	case 4: //The results screen.
		break; //Case 4 break.
	};