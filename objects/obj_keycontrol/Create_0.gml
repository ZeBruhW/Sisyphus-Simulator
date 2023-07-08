//Setting control objects.
randomize();
gpu_set_texfilter(false);

gamestate = 0; //This will track the overarching current state of the game.
//0 is before starting play.
//1 is during the main gameplay loop.
//2 is after you fail, when the camera pans over to the hilltop, then back again.
//3 is the counting up animation, when you've failed and the rock is rolling back down.
//4 is the results screen.

player_correct = 0; //Just checking if the player is holding down the correct keys.

failure_timer_max = 180;
failure_timer = failure_timer_max;
failure_timer_restore_rate = .25;

//Setting variables that allow me to control the score.
time_pushed = 0;
final_time_pushed = 0;
player_display_score = 0;
score_iteration_rate = 0;
failure_animation_time_modifier = 10;

//This is a hack thing. Don't look.
encouraging_words_printed = false;
final_encouraging_words = 0;

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

//Setting the "words of encouragement" we give the player in the final results screen.
function get_encouraging_words(player_score)
	{
	var encouraging_words = 0; //I shit you not, if you delete this line, it all goes to shit. i do not know why.
	
	encouraging_words[0][0] = "Each atom of that stone, each mineral flake of that night filled mountain, in itself forms a world."
	encouraging_words[0][1] = "The struggle itself toward the heights is enough to fill a man's heart. One must imagine Sisyphus happy."
	encouraging_words[1][0] = "All Sisyphus' silent joy is contained therein. His fate belongs to him. His rock is his thing."
	encouraging_words[1][1] = "Likewise, the absurd man, when he contemplates his torment, silences all the idols."
	encouraging_words[1][2] = "In the universe suddenly restored to its silence, the myriad wondering little voices of the earth rise up."
	
	encouraging_words[2][0] = "That's " + string(player_score / 27540) + " times the length of Billy Joel's \"Scenes from an Italian Restaurant!\"";
	encouraging_words[3][0] = "That's about " + string(player_score / 11071) + " times the length of this shitty music loop!"
	encouraging_words[4][0] = "Try harder, and you'll reach even greater heights next time!"
	encouraging_words[5][0] = "It was JUUUUST right there!"
	
	encouraging_words[6][0] = "If this myth is tragic, that is because its hero is conscious."
	encouraging_words[6][1] = "Where would his torture be, indeed, if at every step the hope of succeeding upheld him?"
	encouraging_words[6][2] = "The workman of today works every day in his life at the same tasks, and this fate is no less absurd."
	
	encouraging_words_printed = true;
	
	return encouraging_words[irandom(array_length(encouraging_words) - 1)];
	};
