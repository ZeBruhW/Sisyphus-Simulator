/// @description Insert description here
// You can write your code in this editor

//Lesset some fucking variables.
global.battle_xp = 0; //EXP is directly just the player's time spent pushing, rounded to the nearest integer.
global.battle_level = 0;

next_xp_threshold = 10; //Tracks the XP needed to level up.

//For XP tally animation
new_score_recieved = false;

xp_tally_rate = 3;

did_level_up = false;

global.newly_earned_xp = 0; //The amount of XP you earned in the last playthrough.
xp_untallied = 0; //The amount of EXP left to tally up in the animation.
xp_tally = 0; //The amount of XP in the XP meter shown to the player at this moment.

/*

*/

function level_up()
	{
	global.battle_xp = 0;
	global.battle_level += 1;
	next_xp_threshold = round(next_xp_threshold * 1.25);
	
	obj_unlockcontrol.do_unlock = true; //This will tell unlock control to do the unlocking.
	//I could do it here, but it's honestly way cleaner to handle it this way, I prommy.
	
	alarm[0] = 120;
	did_level_up = true;
	};