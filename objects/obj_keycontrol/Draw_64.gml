// Set font for debugger

draw_set_font(fnt_debugger);
draw_set_color(c_black);

//This is going to be debug text display stuff. Delete this later.

/*
draw_text(0, 0, "player_correct: " + string(player_correct));
draw_text(0, 10, "gamestate: "+ string(gamestate));
draw_text(0, 30, "failure_timer: " + string(failure_timer));
draw_text(0, 40, "time_pushed: " + string(time_pushed));
draw_text(0, 60, "Difficulty level: " + string(difficulty_level));
draw_text(0, 70, "Time to next key:" + string(alarm[0]));
*/

//Tell the player what button to push

draw_set_font(fnt_menu);
draw_set_valign(fa_middle);
draw_set_halign(fa_middle);

switch gamestate
	{
	case 0:
	
	draw_text_color(672, 192, "Press and hold the buttons listed above!", c_black, c_black, c_black, c_black, 1);
	
	case 1:
	
	//Draw the HP bar baybeeeee
	
	draw_healthbar(352, 32, 992, 64, (failure_timer / failure_timer_max) * 100, c_black, c_red, c_green, 0, true, true);
	
	draw_set_color(c_white);
	
	//Draw the box the D key will be in.
	draw_sprite_ext(spr_battlepass_highlightbox, 0, 352, 128, .5, .5, 0, c_white, 1);
	
	//Draw all the player's requested buttons.
	if keyboard_check_direct(ord("D"))
				{
				draw_text(352, 128, "D");
				//string(current_key_demands[i])
				};
			else
				{
				draw_text_color(352, 128, "D", c_red, c_red, c_red, c_red, 1);
				};

	for (var i = 0; i < array_length(current_key_demands); i += 1)
		{
		
		var current_draw_x = 480 + (i * 128)
		
		//Draw the box the key will be in.
		draw_sprite_ext(spr_battlepass_highlightbox, 0, current_draw_x, 128, .5, .5, 0, c_white, 1);
			
		if current_key_demands[i] != 0
			{
				
			if keyboard_check_direct(ord(current_key_demands[i]))
				{
				draw_text(current_draw_x, 128, current_key_demands[i]);
				//string(current_key_demands[i])
				};
			else
				{
				draw_text_color(current_draw_x, 128, current_key_demands[i], c_red, c_red, c_red, c_red, 1);
				};
			};
		};

		break;

	case 3: // In the failure animation, draw the player's score.
		draw_set_color(c_black);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(683, 192, string(player_display_score / 60));
		break; // Break case 3.
		
	case 4: //In the finale
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text(683, 100, "You pushed for " + string(final_time_pushed / 60) + " seconds!");

		if encouraging_words_printed = false
			{
			final_encouraging_words = get_encouraging_words(final_time_pushed);
			}
		
		draw_text(683, 500, "Press Space To Continue!");
		
		draw_set_font(fnt_quote);
		
		for (i = 0; i < array_length(final_encouraging_words); i += 1)
			{
			draw_text(683, 200 + (50 * i), final_encouraging_words[i]);
			};
		
		break;
	};
