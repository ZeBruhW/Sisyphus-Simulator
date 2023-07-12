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
	};