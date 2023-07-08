/// @description Insert description here
// You can write your code in this editor

if new_score_recieved
	{
	obj_scorecontrol.xp_untallied = global.newly_earned_xp;
	
	alarm[0] = xp_tally_rate;
	
	new_score_recieved = false;
	};