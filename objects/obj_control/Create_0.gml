//Setting control objects.

player_correct = 1; //Just checking if the player is holding down the correct keys.

failure_timer_max = 120;
failure_timer = failure_timer_max;
failure_timer_restore_rate = .25;

in_play = true;
time_pushed = 0;

//Control what keys the player needs to be hitting at any given time.
//Make sure you input these as the GML keyboard shortcuts, that is very important.

current_key_demands = [ord("W"), ord("A"), vk_alt, 0 , 0]; 
debug_current_key_demands = ["W", "A", "Alt", 0, 0]; //I need to make this work, somehow.
max_key_demands = 5; //Setting this one to cap at 5 just for now, becausue with D added, that makes 6.

//Establishing the various difficulties of key sets.
keyset_1 = [ord("W"), ord("A"), ord("S")];


function check_player_keys(keys_to_check)
	{
	all_keys_good = true;
	
	if keyboard_check_direct(ord("D")) //Make sure they're always holding D.
		{
		for (var i = 0; i < array_length(keys_to_check); i += 1) //Check the array of keys you need to press.
			{
			if keys_to_check[i] = 0 //If there isn't even a key demand here, then don't bother.
				{
				all_keys_good = true;
				}
			else
				{
				all_keys_good = keyboard_check_direct((keys_to_check[i]))
				if all_keys_good == false
					{
					return false;
					};
				};
			};
		return all_keys_good;
		};
	else
		{
		return false;
		};
	};