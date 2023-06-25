//Setting control objects.
randomize();
gpu_set_texfilter(false);

player_correct = 1; //Just checking if the player is holding down the correct keys.

failure_timer_max = 180;
failure_timer = failure_timer_max;
failure_timer_restore_rate = .25;

in_play = true;
time_pushed = 0;

//Control what keys the player needs to be hitting at any given time.
current_key_demands = [0, 0, 0, 0, 0];

//Setting this one to cap at 5 just for now, becausue with D added, that makes 6.

//Establishing the various difficulties of key sets.
keyset[0] = ["W", "A", "S"]; //WASD
keyset[1] = ["Q", "W", "E", "R", "A", "S", "F", "Z", "X", "C", "1", "2", "3", "4"];
keyset[2] = ["Q", "W", "E", "R", "T", "A", "S", "F", "G", "Z", "X", "C", "V", "1", "2", "3", "4", "5", "6"];
keyset[3] = ["Y", "U", "I", "O", "P", "H", "J", "K", "L", "B", "N", "M", "[", "]", ";", ",", ".", "/", "7", "8", "9", "0"];

//Between sets 3 and 4, we have every legal key, so instead of a keyset 5, we're just going to use those two combined.
//Yeah this shit's lazy. Fight me. I'm the programmer, here, you're not my dad.

//Setting the time thresholds that need to be met in order to increase the keyset difficulty.
difficulty_threshold = [900, 2400, 5400, 7200] //In frames, not seconds.
difficulty_level = 0;

//Set the alarm that decides how long until the next required key spawns.
alarm_set(0, 240); //This alarm determines when the first required key will be picked.
alarm_set(1, 600); //This alarm determines when the first required keys will start to fade.

//Setting up functions.

//Checking player keys.
function check_player_keys(keys_to_check)
	{
	var all_keys_good = true;
	
	if keyboard_check_direct(ord("D")) //Make sure they're always holding D.
		{
		for (var i = 0; i < array_length(keys_to_check); i += 1) //Check the array of keys you need to press.
			{
			if keys_to_check[i] != 0 //If there isn't even a key demand here, then don't bother.
				{
				all_keys_good = keyboard_check_direct(ord(keys_to_check[i])) //Check if you're pushing that key.
				if all_keys_good == false //If not, then return that you're not pushing everything.
					{
					return false;
					};
				};
			};
		return all_keys_good;
		};
	else //If they're not pushing D, just outright return false, don't even bother checking the rest.
		{
		return false;
		};
	};