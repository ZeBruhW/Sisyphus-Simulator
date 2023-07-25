/// @description Insert description here
// You can write your code in this editor

switch obj_keycontrol.gamestate
	{
	case 1:
		if obj_keycontrol.player_correct
			{
			layer_vspeed(layer_id, global.pushing_movement_rate / 8);
			
			layer_vspeed(tree_layer_id, global.pushing_movement_rate / 6);
			layer_hspeed(tree_layer_id, (global.pushing_movement_rate / 2) * -1);
			}
		else
			{
			layer_vspeed(layer_id, 0);
			
			layer_vspeed(tree_layer_id, 0);
			layer_hspeed(tree_layer_id, 0);
			}
		break;
	case 2:
	case 3:
	}