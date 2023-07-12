if gamestate == 1
	{
	//When this alarm goes off, we select a new random key to add to the list of keys to press.
	var threshold_length = array_length(difficulty_threshold);
	var slot_to_fill = irandom((array_length(current_key_demands) - 1));
	var set_to_pick_from = difficulty_level

	//If difficulty level is at max, it'll just select from the two highest keysets and then select from those.
	//Yes this is to prevent making an array that has literally the entirety of every key on the keyboard. Fuck off.
	if difficulty_level == threshold_length
		{
		set_to_pick_from = irandom_range(2, 3);
		}

	//Select the new key.
	var newkey = keyset[set_to_pick_from, irandom(array_length(keyset[set_to_pick_from]) - 1)];

	//And then insert it into the list of key demands.
	current_key_demands[slot_to_fill] = newkey;

	//Incrementing the difficulty level if you've met the threshold for pushing the right amount of time.
	
	if difficulty_level < threshold_length
		{
		if time_pushed > difficulty_threshold[difficulty_level]
			{
			difficulty_level += 1;
			current_key_demands = [0, 0, 0, 0, 0];
			}
		}
	/*
	if (time_pushed >= difficulty_threshold[difficulty_level]) and (difficulty_level != threshold_length)
		{
		current_key_demands = [0, 0, 0, 0, 0];
		difficulty_level += 1
		}
	*/

	alarm_set(0, irandom_range(120, 600));
	};