// Set font for debugger

draw_set_font(fnt_debugger);
draw_set_color(c_black);

//This is going to be debug text display stuff. Delete this later.
draw_text(0, 0, "player_correct: " + string(player_correct));
draw_text(0, 10, "gamestate: "+ string(gamestate));
draw_text(0, 30, "failure_timer: " + string(failure_timer));
draw_text(0, 40, "time_pushed: " + string(time_pushed));
draw_text(0, 60, "Difficulty level: " + string(difficulty_level));
draw_text(0, 70, "Time to next key:" + string(alarm[0]));

//Tell the player what button to push

draw_set_font(fnt_menu);
draw_set_valign(fa_middle);
var window_width = window_get_width();
var window_height = window_get_height();

switch gamestate
	{
	case 0:
	case 1:
	
	draw_set_color(c_white);
	draw_sprite(spr_ui_keydemand, 0, 250, 80);
	
	if keyboard_check_direct(ord("D"))
				{
				draw_text(245, 80, "D");
				//string(current_key_demands[i])
				};
			else
				{
				draw_text_color(245, 80, "D", c_red, c_red, c_red, c_red, 1);
				};

	for (var i = 0; i < array_length(current_key_demands); i += 1)
		{
		draw_sprite(spr_ui_keydemand, 0, 250 + ((i + 1) * 128), 80);
		if current_key_demands[i] != 0
			{
			if keyboard_check_direct(ord(current_key_demands[i]))
				{
				draw_text(245 + ((i + 1) * 128), 80, current_key_demands[i]);
				//string(current_key_demands[i])
				};
			else
				{
				draw_text_color(245 + ((i + 1) * 128), 80, current_key_demands[i], c_red, c_red, c_red, c_red, 1);
				};
			};
		};

		break; //Break case 1 and 2.

	case 3: // In the failure animation, draw the player's score.
		draw_set_color(c_black);
		draw_text(0, 100, string(player_display_score / 60));
		break; // Break case 3.
		
	case 4: //In the finale
		draw_text(0, 200, "You pushed for " + string(final_time_pushed / 60) + " seconds!");

		if encouraging_words_printed = false
			{
			final_encouraging_words = get_encouraging_words(final_time_pushed);
			}
		
		draw_text(0, 600, "Press Space To Continue!");
		
		draw_set_font(fnt_quote);
		
		for (i = 0; i < array_length(final_encouraging_words); i += 1)
			{
			draw_text(0, 300 + (50 * i), final_encouraging_words[i]);
			};
		
		break;
	};
