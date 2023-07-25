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
			draw_set_halign(fa_center);
			draw_set_color(c_black);
			
			//Center is 683 x, 384 y.
			//draw_text(0, 200, "XP Tally: " + string(xp_tally)); //Debug item. Delete as needed.
			draw_sprite(spr_score_display, 0, 683, 384);
			
			draw_text(683, 284, "Score: " + string(xp_untallied));
			draw_text(683, 314, "Battle Pass XP: " + string(global.battle_xp) + " / " + string(next_xp_threshold));
		
			draw_healthbar(483, 350, 883, 375, (global.battle_xp / next_xp_threshold) * 100, c_black, c_blue, c_teal, 0, true, true);
		
			//400 wide. 25 high.
		
			draw_text(683, 484, "Battle Pass Level: " + string(global.battle_level));
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