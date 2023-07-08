/// @description Insert description here
// You can write your code in this editor

//Checking the length of the rewards is there because otherwise this code would crash
//If you get a level higher than the amount of rewards we currently have in the pass.
//Also this will only run if there actually is a reward in the battle pass level.
if (do_unlock == true) and (global.battle_level < rewardcap) and (rewardlist[global.battle_level] != 0)
	{
	rewardlist[global.battle_level][0] = true;
	
	show_new_unlock = true;
	alarm[0] = 60;
	
	do_unlock = false;
	}
