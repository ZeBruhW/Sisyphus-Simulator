/// @description Insert description here
// You can write your code in this editor

//xp tally iteration for the XP tracker in gamestate 5.
//This will also probably control level ups.
//Look. I know I should control level ups elsewhere.
//But I am so tired. And if I have to program this shit twice, I am going to snap like a twig.
//Okay?

if room == TheHill
	{
	
	if obj_keycontrol.gamestate == 5
		{
		did_level_up = false;
			
		if xp_tally != global.newly_earned_xp
			{
			global.battle_xp += 1;
		
			xp_tally += 1;
			xp_untallied -= 1;
		
			alarm[0] = xp_tally_rate + (3 * (xp_tally / global.newly_earned_xp));
			};
		else
			{
			global.newly_earned_xp = 0;
			xp_tally = 0;
			xp_untallied = 0;
			obj_keycontrol.gamestate = 6;
			};
		
		//Here we check if you need to level up.
		if global.battle_xp == next_xp_threshold
			{
			level_up();
			};
		};
	else
		{
		alarm[0] = xp_tally_rate;
		};
	};


//Check if level up happened.