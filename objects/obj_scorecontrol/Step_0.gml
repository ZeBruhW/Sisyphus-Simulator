/// @description Insert description here
// You can write your code in this editor

if new_score_recieved
	{
	obj_scorecontrol.xp_untallied = global.newly_earned_xp;
	
	alarm[0] = xp_tally_rate;
	
	new_score_recieved = false;
	};

/*
if xp_tally == xp_to_next
	{
	//Do the level up sequence. This is going to be a pain in the ass for me.
	}
*/