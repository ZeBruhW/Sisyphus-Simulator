//Alright baby let's fucking roll

switch obj_keycontrol.gamestate
	{
	case 0: //Before the game has begun.
		break; //Case 0 break.
	
	case 1: //The main gameplay loop.
		if obj_keycontrol.player_correct
			{
			image_angle -= rollspeed;
			};
		break; //Case 1 break.
	
	case 2: //The camera move cutscene after failure.
		break; //Case 2 break.
	
	case 3: //The failure rolldown and countup.
		image_angle -= fallspeed;
		break; //Case 3 break.
		
	case 4: //The results screen.
		break; //Case 4 break.
	};

	