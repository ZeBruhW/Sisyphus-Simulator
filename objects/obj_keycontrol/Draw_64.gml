// Set font for debugger

draw_set_font(fnt_debugger)

//This is going to be debug text display stuff. Delete this later.
draw_text(0, 0, "player_correct: " + string(player_correct));
draw_text(0, 10, "gamestate: "+ string(gamestate));
draw_text(0, 30, "failure_timer: " + string(failure_timer));
draw_text(0, 40, "time_pushed: " + string(time_pushed));
draw_text(0, 60, "Difficulty level: " + string(difficulty_level));

//Tell the player what button to push

draw_set_font(fnt_menu);
var window_width = window_get_width();
var window_height = window_get_height();

switch gamestate
	{
	case 0:
	case 1:
	
	draw_text(window_width / 2, 50, "Push D");

	for (var i = 0; i < array_length(current_key_demands); i += 1)
		{
		if current_key_demands[i] != 0
			{
			draw_text(window_width / 2, 80 + (i * 30), "Push " + string(current_key_demands[i]));
			};
		};

		break; //Break case 1 and 2.

	case 3: // In the failure animation, draw the player's score.
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
