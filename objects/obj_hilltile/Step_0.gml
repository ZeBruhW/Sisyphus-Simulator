/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

switch obj_keycontrol.gamestate
	{
	case 1:
		if obj_keycontrol.player_correct and y <= room_height //The bug is in here.
			{
			y += pushing_movement_rate / 3;
			x -= pushing_movement_rate;
			};
		else if y > room_height
			{
			x = 1701;
			y = 201;
			};
		break;
	case 3:
		if x <= falling_despawn_x
			{
			y += falling_movement_rate / 3;
			x -= falling_movement_rate;
			}
		else
			{
			x = 0 //falling_spawn_x;
			y = 768 //falling_spawn_y;
			}
	};