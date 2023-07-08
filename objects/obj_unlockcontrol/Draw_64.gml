/// @description Insert description here
// You can write your code in this editor

if show_new_unlock
	{
	draw_text(750, 200, "Level Up!")
	draw_text(750, 250, "New Unlock!")
	draw_sprite_ext(rewardlist[global.battle_level][1], 0, 800, 100, 3, 3, 0, c_white, 1);
	}


/*
//Debug strings
draw_text(750, 200, "Rockunlocks value: " + string(rockunlocks[1][0]));
draw_text(750, 250, "Rewardlist value: " + string(rewardlist[1][0]));
*/