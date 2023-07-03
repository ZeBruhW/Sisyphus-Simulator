/// @description Insert description here
// You can write your code in this editor

if room == TheHill
	{
	if obj_keycontrol.gamestate == 5 or obj_keycontrol.gamestate == 6
		{
		//draw_text(0, 200, "XP Tally: " + string(xp_tally)); //Debug item. Delete as needed.
		draw_text(0, 200, "Score: " + string(xp_untallied));
		draw_text(0, 250, "Battle Pass XP: " + string(global.battle_xp) + " / " + string(next_xp_threshold));
		draw_text(0, 350, "Battle Pass Level: " + string(global.battle_level));
		//draw_text(0, 300, alarm[0]); //Debug alarm. Delete this when needed.
		};
	}

if room == rm_battlepass
	{
	draw_text(0, 200, global.battle_level);
	draw_text(0, 300, global.battle_xp);
	};