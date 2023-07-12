/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

switch obj_keycontrol.gamestate
	{
	case 1:
		if obj_keycontrol.player_correct and y < room_height
			{
			y += pushing_movement_rate / 3;
			x -= pushing_movement_rate;
			};
		else if y > room_height
			{
			x = 1744;
			y = 256;
			};
		break;
	};