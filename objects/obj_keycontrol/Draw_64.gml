// Set font for debugger

draw_set_font(fnt_debugger)

//This is going to be debug text display stuff. Delete this later.
draw_text(0, 0, "player_correct: " + string(player_correct));
draw_text(0, 10, "in_play: "+ string(in_play));
draw_text(0, 30, "failure_timer: " + string(failure_timer));
draw_text(0, 40, "time_pushed: " + string(time_pushed));
draw_text(0, 60, "Difficulty level: " + string(difficulty_level));

//Tell the player what button to push

draw_set_font(fnt_menu);
var window_width = window_get_width();
var window_height = window_get_height();

draw_text(window_width / 2, 50, "Push D");

for (var i = 0; i < array_length(current_key_demands); i += 1)
	{
	if current_key_demands[i] != 0
		{
		draw_text(window_width / 2, 80 + (i * 30), "Push " + string(current_key_demands[i]));
		}
	}


