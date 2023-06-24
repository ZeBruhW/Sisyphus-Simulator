//This is going to be debug text display stuff. Delete this later.
draw_text(0, 0, "player_correct: " + string(player_correct));
draw_text(0, 10, "in_play: "+ string(in_play));
draw_text(0, 30, "failure_timer: " + string(failure_timer));
draw_text(0, 40, "time_pushed: " + string(time_pushed));
draw_text(0, 60, "Difficulty level: " + string(difficulty_level));

//Tell the player what button to push

draw_text(512, 60, "Push D");

for (var i = 0; i < array_length(current_key_demands); i += 1)
	{
	if current_key_demands[i] != 0
		{
		draw_text(512, 75 + (i * 15), "Push " + string(current_key_demands[i]));
		}
	}
