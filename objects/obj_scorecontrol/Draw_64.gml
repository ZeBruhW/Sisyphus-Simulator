/// @description Insert description here
// You can write your code in this editor
switch room
	{
	case TheHill:
		{
		if obj_keycontrol.gamestate == 5 or obj_keycontrol.gamestate == 6
			{
			
			draw_set_font(fnt_menu);
			draw_set_valign(fa_middle);
			draw_set_halign(fa_left);
			draw_set_color(c_black);
			//draw_text(0, 200, "XP Tally: " + string(xp_tally)); //Debug item. Delete as needed.
			draw_text(0, 200, "Score: " + string(xp_untallied));
			draw_text(0, 250, "Battle Pass XP: " + string(global.battle_xp) + " / " + string(next_xp_threshold));
		
			draw_healthbar(0, 300, 400, 325, (global.battle_xp / next_xp_threshold) * 100, c_black, c_blue, c_teal, 0, true, true);
		
			draw_text(0, 350, "Battle Pass Level: " + string(global.battle_level));
			//draw_text(0, 300, alarm[0]); //Debug alarm. Delete this when needed.
			};
		break;
		};
		
	case rm_battlepass:
		{
		
		//Draw your current level indicator
		draw_text(432, 224, global.battle_level);
		
		//Now we draw the fucking... bar. The evil, evil bar.
		//I hate GML health bars. Why are there so many goddamned variables.
		var xp_percentage = (global.battle_xp / next_xp_threshold) * 100
		
		draw_healthbar(500, 220, 1180, 235, xp_percentage, c_white, c_blue, c_teal, 0, true, true);
		
		break;
		};
	}