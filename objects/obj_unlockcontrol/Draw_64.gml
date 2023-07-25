/// @description Insert description here
// You can write your code in this editor

switch room
	{
		
	case TheHill:
		{
		//You have levelled up, you know what that means! That's right!!
		//Show the player their brand new unlock!
		//(Price is Right theme starts playing)
		if show_new_unlock
			{
			draw_set_font(fnt_menularge);
			draw_set_halign(fa_center);
			draw_set_valign(fa_center);
			draw_set_color(c_black);
			
			draw_text(683, 250, "You unlocked a new skin!")
			
			draw_sprite(spr_skins_box, 0, 683, 100);
			draw_sprite_ext(rewardlist[global.battle_level][1], 0, 683, 100, 3, 3, 0, c_white, 1);
			};
			
		break;
		};
		
	case rm_battlepass:
		{
		//Oh boy, this shit's about to get ROUGH, gamers.	
		
		draw_set_font(fnt_menularge);
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		draw_set_color(c_black);
		
		//Draw the rocks and levels for the actual battle pass indicator.
		for (i = 0; i < 5; i++)
			{
			
			//Draw the rock in question.
			if rewardlist[furthest_left + i] != 0
				{
				draw_sprite_ext(rewardlist[furthest_left + i][1], 0, 281.5 + (200 * i), 413, 2.5, 2.5, 0, c_white, 1);
				
				//If the item isn't unlocked, then just draw a padlock over it.
				if global.battle_level != (furthest_left + i)
					{
					draw_sprite_ext(spr_padlock, 0, 281.5 + (200 * i), 413, 2.5, 2.5, 0, c_white, 1);
					};
				};
			
			//Always draw the level, regardless of if there is an item or not.
			draw_text(281 + (200 * i), 564, string(furthest_left+i));
			
			};
			
		break;
		}
	};

/*
//Debug strings
draw_text(750, 200, "Rockunlocks value: " + string(rockunlocks[1][0]));
draw_text(750, 250, "Rewardlist value: " + string(rewardlist[1][0]));
*/